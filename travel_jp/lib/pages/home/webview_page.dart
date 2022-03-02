import 'package:flutter/material.dart';
import 'package:travel_jp/Common/ui/webview.dart';
import '../../model/home_data_model_entity.dart';

class HYwebviewPage extends StatelessWidget {
  const HYwebviewPage({Key? key}) : super(key: key);
  static const routerName = "/home/webview";

  @override
  Widget build(BuildContext context) {
    Map dataMap = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(dataMap["title"]),
        centerTitle: true,
      ),
      body: HYBaseWebview(
          dataMap["url"]
      ),
    );
  }
}
