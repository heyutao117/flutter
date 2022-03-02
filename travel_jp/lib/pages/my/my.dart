import 'package:flutter/material.dart';
import 'package:travel_jp/pages/my/my_copyright_view.dart';
import 'package:travel_jp/pages/my/my_feedback_page.dart';

class HYMyPage extends StatelessWidget {
  const HYMyPage({Key? key}) : super(key: key);
  static const String routerName = "/myPage";
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
            leading: Image.asset("assets/images/my/copyright.png",width: 30,),
            title: const Text("版权说明"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
                Navigator.pushNamed(context, HYMyCopyrightPage.routerName);
          }),
          ListTile(
              leading: Image.asset("assets/images/my/suggestion.png",width: 30,),
              title: const Text("意见反馈"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pushNamed(context, HYMyFeedbackPage.routerName);
              }),
        ],
      ),
    );
  }
}
