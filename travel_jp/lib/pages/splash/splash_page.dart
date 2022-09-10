import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_jp/pages/main/main.dart';

class HYSplashPage extends StatefulWidget {
  const HYSplashPage({Key? key}) : super(key: key);
  static const routerName = "/splash";
  @override
  _HYSplashPageState createState() => _HYSplashPageState();
}

class _HYSplashPageState extends State<HYSplashPage> {
  late Timer _counterTimer;
  int _countDown = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/icon_splash.png", fit: BoxFit.fill),
          Positioned(
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "$_countDown",
                  style: TextStyle(color: Colors.black),
                ),
              ])),
              decoration: BoxDecoration(
                  color: Colors.grey[350],
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              // padding: EdgeInsets.all(15),
            ),
            top: 30,
            right: 30,
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startCountDown();
  }

  void _startCountDown() {
    _counterTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countDown < 1) {
          Navigator.pushNamedAndRemoveUntil(
              context, HYMainPage.routerName, (route) => false);
          _counterTimer.cancel();
        } else {
          _countDown -= 1; //计数器减1
        }
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _counterTimer.cancel();
    _countDown = 0;
  }
}
