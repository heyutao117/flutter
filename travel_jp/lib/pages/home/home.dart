import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_jp/Common/service/http_home_request.dart';
import 'package:travel_jp/Common/viewmodel/home_view_model.dart';
import 'package:travel_jp/pages/home/home_content_view.dart';

class HYHomePage extends StatefulWidget {
  const HYHomePage({Key? key}) : super(key: key);
  static const String routerName = "/homePage";

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: HYHttpHomeRequest.homeRequest(),
      builder:(BuildContext context, AsyncSnapshot snapshot){
        switch (snapshot.connectionState){
            case ConnectionState.none:
            case ConnectionState.waiting:
              {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

             default:
                if (snapshot.hasError) {
                  return  Text('Error: ${snapshot.error}');
                } else {

                  return  Consumer<HYHomeProvider>(
                      builder: (BuildContext context, homemodelVM, child) {
                        homemodelVM.homeDataModelEntity = snapshot.data;
                        return  HYHomeContentView(homeDataModelEntity: snapshot.data,);
                      },
                  );

                }
        }
      }
    );
  }
}