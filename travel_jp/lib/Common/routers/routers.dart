import 'package:flutter/material.dart';
import 'package:travel_jp/pages/classification/classification.dart';
import 'package:travel_jp/pages/classification/classification_videos_page.dart';
import 'package:travel_jp/pages/home/home.dart';
import 'package:travel_jp/pages/home/home_vedio_view.dart';
import 'package:travel_jp/pages/home/webview_page.dart';
import 'package:travel_jp/pages/knowledge/knowledge.dart';
import 'package:travel_jp/pages/main/main.dart';
import 'package:travel_jp/pages/my/my.dart';
import 'package:travel_jp/pages/my/my_copyright_view.dart';
import 'package:travel_jp/pages/my/my_feedback_page.dart';
import 'package:travel_jp/pages/splash/splash_page.dart';

Map<String, Widget Function(BuildContext)> routers = {
  HYMainPage.routerName: (context) => HYMainPage(),
  HYHomePage.routerName: (context) => HYHomePage(),
  HYHomeVideoPage.routerName: (context) => HYHomeVideoPage(),
  HYwebviewPage.routerName: (context) => HYwebviewPage(),
  HYClassificationPage.routerName: (context) => HYClassificationPage(),
  HYClassificationVideosPage.routerName: (context) =>
      HYClassificationVideosPage(),
  HYKnowledgePage.routerName: (context) => HYKnowledgePage(),
  HYMyPage.routerName: (context) => HYMyPage(),
  HYMyCopyrightPage.routerName: (context) => HYMyCopyrightPage(),
  HYMyFeedbackPage.routerName: (context) => HYMyFeedbackPage(),
  HYSplashPage.routerName: (context) => HYSplashPage(),
};

const String initialRoute = HYSplashPage.routerName;
