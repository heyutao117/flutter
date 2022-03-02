
import 'package:flutter/cupertino.dart';

class HYBottomNavigationBarItem extends BottomNavigationBarItem{
  HYBottomNavigationBarItem(String iconName,String title) : super(
    label: title,
    icon: Image.asset("assets/images/tabbar/${iconName}_default.png",width: 32,scale: 2.0,),
    activeIcon: Image.asset("assets/images/tabbar/${iconName}_selected.png",width: 32,scale: 2.0),
  );

}