package com.example.travel_jp

import android.util.Log
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "myApp"

    override fun configureFlutterEngine( flutterEngine: FlutterEngine) {
        // 1.创建MethodChannel对象
        val methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
        Log.d("Tag","=====被打印1====")

        // 2.添加调用方法的回调
        methodChannel.setMethodCallHandler {
            // Note: this method is invoked on the main thread.
                call, result ->
            // 2.1.如果调用的方法是getBatteryInfo,那么正常执行
            Log.d("Tag","=====被打印2===="+call.method)

            if (call.method == "flutterToNative") {
                Log.d("Tag","=====被打印3====")

            } else {
                // 2.2.如果调用的方法是getBatteryInfo,那么正常执行
                result.notImplemented()
            }
        }
    }
}
