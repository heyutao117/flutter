

import 'package:flutter/cupertino.dart';
import 'package:travel_jp/pages/classification/classification.dart';
import 'package:travel_jp/pages/home/home.dart';
import 'package:travel_jp/pages/knowledge/knowledge.dart';
import '../../pages/my/my.dart';
import '../ui/bottombar_item.dart';

List<HYBottomNavigationBarItem> items = [
  HYBottomNavigationBarItem("tab_home", "首页"),
  HYBottomNavigationBarItem("tab_classification", "专辑"),
  HYBottomNavigationBarItem("tab_zhishi", "知识"),
  HYBottomNavigationBarItem("tab_user", "我的"),
];

List<Widget> pages =[
  HYHomePage(),
  HYClassificationPage(),
  HYKnowledgePage(),
  HYMyPage()
];