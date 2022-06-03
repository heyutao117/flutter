//
//  FlutterNativePlugin.swift
//  Runner
//
//  Created by xyt on 2022/5/22.
//

import UIKit

class FlutterNativePlugin: NSObject {
    static let plugin = FlutterNativePlugin()
    private let channelName = "myApp"
    private var channel: FlutterMethodChannel?
    
    func register(messenger: FlutterBinaryMessenger?, callBack: (() -> Void)? = nil) {
        guard let _messenger = messenger else { return }
        FlutterNativePlugin.plugin.registerMethod(messenger: _messenger, callBack: callBack)
    }
    
    /// 注册方法，等待flutter调用
    private func registerMethod(messenger: FlutterBinaryMessenger, callBack: (() -> Void)? = nil) {
        channel = FlutterMethodChannel(name: channelName, binaryMessenger: messenger)
        guard let _channel = channel else { return }
        _channel.setMethodCallHandler { (call, result) in
            /// 逻辑处理...
            if (call.method == "flutterToNative") {
                let nav = UINavigationController.init(rootViewController: RootViewController.init());
                nav.modalPresentationStyle = .fullScreen
                Tools.getCurrentVC()?.present(nav, animated: false, completion: nil);
                print("收到flutter调用原生：" + call.method + "参数：" + (call.arguments as? String ?? ""))
                result(call.arguments)
                guard let _callBack = callBack else { return }
                _callBack()
              
            }
        }
    }
    
    // 原生调用flutter
    public func invokeMethod(method: String, gaguments: Any?, callBack: ((_ result: Any?) -> Void)?) {
        guard let _channel = channel else { return }
        _channel.invokeMethod(method, arguments: gaguments) { (result) in
            guard let _callBack = callBack else { return }
            _callBack(result)
        }
    }
}
