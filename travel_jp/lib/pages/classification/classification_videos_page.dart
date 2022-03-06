import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_jp/Common/service/http_classification_request.dart';
import 'package:travel_jp/model/classification_videos_model_entity.dart';

import '../../model/classification_data_model_entity.dart';
import '../home/home_vedio_view.dart';

class HYClassificationVideosPage extends StatelessWidget {
  const HYClassificationVideosPage({Key? key}) : super(key: key);
  static const routerName = "/classifiction/videos";

  @override
  Widget build(BuildContext context) {
    HYClassificationDataModelEntity dataModelEntity = ModalRoute.of(context)
        ?.settings
        .arguments as HYClassificationDataModelEntity;
    return Scaffold(
      appBar: AppBar(
        title: Text(dataModelEntity.title),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: HYClassificationRequest.classificationVideosRequest(
              dataModelEntity.mainId),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                break;
              default:
                {
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text("请求接口报错"),
                    );
                  }
                  HYClassificationVideosModelEntity videosModelEntity =
                      snapshot.data as HYClassificationVideosModelEntity;
                  return ListView.builder(
                      itemCount: videosModelEntity.vlist.length,
                      itemBuilder: (context, index) {
                        return getVideoWidget(
                            videosModelEntity.vlist[index], context);
                      });
                }
            }
          }),
    );
  }

  Widget getVideoWidget(
      ClassificationVideosModelVlist videosModelVlist, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, HYHomeVideoPage.routerName,
              arguments: videosModelVlist.videoId.toString());
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              videosModelVlist.backImg,
              height: 200,
              fit: BoxFit.fitHeight,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/home/play.png",
                height: 30,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: ScreenUtil().screenWidth,
                padding: const EdgeInsets.all(10),
                child: Text(
                  videosModelVlist.title,
                  style: const TextStyle(color: Colors.white),
                ),
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
