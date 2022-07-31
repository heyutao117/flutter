//
//  NetworkImpl.swift
//  Runner
//
//  Created by xyt on 2022/6/28.
//

import UIKit

class NetworkImpl: NetworkUtilProtocal {
    static func getRequest(URLString: String, parameters: [String : Any]?, callback: @escaping (Any) -> ()) {
        NetworkUtil.requestData(MethodType.get, URLString: URLString, parameters: parameters) { (result) in
            callback(result)
        }
    }
    
    static func postRequest(URLString: String, parameters: [String : Any]?, callback: @escaping (Any) -> ()) {
        NetworkUtil.requestData(MethodType.post, URLString: URLString, parameters: parameters) { (result) in
            callback(result)
        }
    }
    
}
