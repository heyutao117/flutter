import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_jp/Common/viewmodel/home_view_model.dart';
import 'package:travel_jp/pages/app/app.dart';

void main() {

  runApp(
      MultiProvider(
        child: const HYMyApp(),
        providers: [
          ChangeNotifierProvider(create: (context)=>HYHomeProvider()),
        ],
      ),
  );
}



