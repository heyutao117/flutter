import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

const channel = MethodChannel('myApp');

class HYChannel {
  /*注册方法，供原生调用*/
  static void register() {
    channel.setMethodCallHandler((call) async {
      if (kDebugMode) {
        print('收到原生调用flutter：' + call.method + '参数：' + call.arguments);
      }
      if (call.method == "work") {
        return call.arguments;
      }
    });
  }

  /*flutter调用原生*/
  static void invokeMethod<T>(String method, Function(dynamic result) callBack,
      [dynamic arguments]) async {
    dynamic result = await channel.invokeMethod(method, arguments);
    if (callBack != null) {
      callBack(result);
    }
  }
}
