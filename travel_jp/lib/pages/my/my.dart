import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:travel_jp/Common/channel/my_channel.dart';
import 'package:travel_jp/pages/my/my_copyright_view.dart';
import 'package:travel_jp/pages/my/my_feedback_page.dart';

class HYMyPage extends StatefulWidget {
  const HYMyPage({Key? key}) : super(key: key);
  static const String routerName = "/myPage";

  @override
  State<HYMyPage> createState() => _HYMyPageState();
}

class _HYMyPageState extends State<HYMyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("我的"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
              leading: Image.asset(
                "assets/images/my/copyright.png",
                width: 30,
              ),
              title: const Text("版权说明"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, HYMyCopyrightPage.routerName);
              }),
          ListTile(
              leading: Image.asset(
                "assets/images/my/suggestion.png",
                width: 30,
              ),
              title: const Text("意见反馈"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, HYMyFeedbackPage.routerName);
              }),
          ListTile(
              leading: Image.asset(
                "assets/images/my/share.png",
                width: 30,
              ),
              title: const Text("原生交互"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                HYChannel.invokeMethod("flutterToNative", (result) {
                  Fluttertoast.showToast(msg: ("收到native的回调结果了" + result));
                }, "我是flutter");
              }),
        ],
      ),
    );
  }
}
