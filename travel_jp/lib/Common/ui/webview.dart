import 'package:webview_flutter/webview_flutter.dart';

class HYBaseWebview extends WebView{
  HYBaseWebview(String url):super(
    initialUrl: url,
    javascriptMode: JavascriptMode.unrestricted,
  );
}