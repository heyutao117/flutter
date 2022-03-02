
import 'package:flutter/material.dart';
import 'package:travel_jp/Common/tools/initialize_items.dart';

class HYMainPage extends StatefulWidget {
  const HYMainPage({Key? key}) : super(key: key);
  static const String routerName = "/";
  @override
  State<HYMainPage> createState() => _HYMainPageState();
}

class _HYMainPageState extends State<HYMainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12.0,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        children: pages,
        index: _currentIndex,
      ),

    );
  }
}
