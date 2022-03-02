
import 'package:travel_jp/model/classification_data_model_entity.dart';

import '../../model/classification_videos_model_entity.dart';
import 'http_request.dart';

class HYClassificationRequest {
  static Future <List<HYClassificationDataModelEntity>> classificationRequest() async {
    const url = "/v2/firstpage690_340_1?appname=baispribenlvyou&os=ios&version=6.7.0&udid=dd83183044eec7bed4a1134674e0d55d1dc2be8b&hardware=android";
    final result = await HYHttpBaseRequest.request(url);
    final List dataResult = result["data"];
    List<HYClassificationDataModelEntity> dataList = [];
    for (var json in dataResult) {
      dataList.add(HYClassificationDataModelEntity.fromJson(json));
    }
    return dataList;
  }
  static Future <HYClassificationVideosModelEntity>classificationVideosRequest (String mainId)async{
    final String url = '/v2/videos?appname=baispribenlvyou&os=ios&version=6.7.0&udid=dd83183044eec7bed4a1134674e0d55d1dc2be8b&hardware=iphone&mainId=$mainId';
    final result = await HYHttpBaseRequest.request(url);
    HYClassificationVideosModelEntity videosModelEntity = HYClassificationVideosModelEntity.fromJson(result["data"]);
    return videosModelEntity;
  }
}

