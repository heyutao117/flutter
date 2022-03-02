import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HYMyCopyrightPage extends StatelessWidget {
  const HYMyCopyrightPage({Key? key}) : super(key: key);
  static const routerName = "/my/copyrihgt";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text("版权申明"),
         centerTitle: true,
       ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Image.asset("assets/images/my/affirms.png",width: ScreenUtil().screenWidth,fit: BoxFit.fill,),
      ),

    );
  }
}
