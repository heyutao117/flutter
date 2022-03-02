import 'package:flutter/material.dart';
import 'package:travel_jp/Common/service/http_home_request.dart';
import 'package:travel_jp/model/home_data_video_model_entity.dart';
import 'package:travel_jp/pages/home/home_vedio_content_view.dart';

class HYHomeVideoPage extends StatefulWidget {
  const HYHomeVideoPage({Key? key}) : super(key: key);
  static const String routerName ="/home/video";
  @override
  State<HYHomeVideoPage> createState() => _HYHomeVideoPageState();
}

class _HYHomeVideoPageState extends State<HYHomeVideoPage> {

  @override
  Widget build(BuildContext context) {
   final String videoId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("视频播放页面"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: HYHttpHomeRequest.videoRequest(videoId),
        builder: (context,snapdata){
          switch (snapdata.connectionState){
            case ConnectionState.waiting:
            case ConnectionState.none:
              {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            default:
              {
                if(snapdata.hasError){
                  return const Center(
                    child: Text("请求出错了"),
                  );
                }else{
                  HYHomeDataVideoModelEntity homeDataVideoModelEntity = snapdata.data as HYHomeDataVideoModelEntity;
                  String vid = videoId.substring(videoId.length-3);
                  return HYVideoContentView(vid: vid, homeDataVideoModelEntity: homeDataVideoModelEntity);
                }
              }
          }
        }
      ),
    );
  }

}
