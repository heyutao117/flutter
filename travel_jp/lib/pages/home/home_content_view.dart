
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_jp/pages/home/home_content_raiders_view.dart';
import 'package:travel_jp/pages/home/home_swiper_view.dart';
import 'package:travel_jp/pages/home/home_vedio_view.dart';
import 'package:travel_jp/pages/home/webview_page.dart';
import '../../model/home_data_model_entity.dart';

class HYHomeContentView extends StatelessWidget {
  final HYHomeDataModelEntity homeDataModelEntity ;
  const HYHomeContentView({Key? key, required this.homeDataModelEntity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const HYHomeSwiperView(),
            const ListTile(title: Text("攻略精选"), subtitle: Text("超详细介绍，带你轻松玩转日本"),),
            HYHomeConentRaidersView(homeDataModelEntity: homeDataModelEntity,),
            const ListTile(title: Text("发现美食"), subtitle: Text("骨灰级吃货都推荐的日料"),),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: homeDataModelEntity.readtype2.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context,int index){
                     return getlistViewWidget(homeDataModelEntity.readtype2[index],context);
            }),
            const ListTile(title: Text("达人推荐"), subtitle: Text("人气爆棚的日本5A级旅游景点"),),
            ListView.builder(
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics() ,
                itemCount: homeDataModelEntity.videos[0].list.length,
                itemBuilder:(BuildContext context,int index){
                  return getVideoWidget(homeDataModelEntity.videos[0].list[index],context);
                }),
          ],
        ),
      )
    );
  }
  
  Widget getlistViewWidget(HomeDataModelReadtype2 homeDataModelReadtype2,BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, HYwebviewPage.routerName,arguments: {"title":homeDataModelReadtype2.title,"url":homeDataModelReadtype2.url});
        },
        child: Row(
          children: [
            Image.network(homeDataModelReadtype2.imageUrl,height: 60,fit: BoxFit.fitHeight,),
            const SizedBox(width: 20,),
            Expanded(child: Text(homeDataModelReadtype2.title,maxLines: 2,)),
            const SizedBox(width: 30,),
          ],
        ),
      ),
    );
  }

  Widget getVideoWidget(HomeDataModelVideosList homeDataModelVideosList,BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, HYHomeVideoPage.routerName,arguments:  homeDataModelVideosList.videoId.toString());
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(homeDataModelVideosList.backImg,height: 200,fit: BoxFit.fitHeight,),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/home/play.png",height: 30,fit:BoxFit.fitHeight,),
            ),
            Positioned(
              left: 0,
              bottom:0,
              child: Container(
                width: ScreenUtil().screenWidth,
                padding: const EdgeInsets.all(10),
                child: Text(homeDataModelVideosList.title,style: const TextStyle(color: Colors.white),),
                decoration: const BoxDecoration(
                  color: Color(0x90000000),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



