import 'package:travel_jp/Common/service/http_request.dart';
import 'package:travel_jp/model/home_data_model_entity.dart';

import '../../model/home_data_video_model_entity.dart';

class HYHttpHomeRequest {
  static Future <HYHomeDataModelEntity> homeRequest() async{
    const url = "/video/zdyhomepage?appname=baispribenlvyou&version=6.7.0&page=0&readtype=1&hardware=android";

    final reslult = await HYHttpBaseRequest.request(url);
    print(reslult);
    final dataResult = reslult["data"];
    HYHomeDataModelEntity homeDataModelEntity = HYHomeDataModelEntity.fromJson(dataResult);
    return homeDataModelEntity;
}
  static Future <HYHomeDataVideoModelEntity>videoRequest(String mainId)async{
    final realId = mainId.substring(0,mainId.length -3);
    final String url = "/v2/videos?appname=baispribenlvyou&os=ios&version=6.7.0&mainId=$realId&hardware=android";
    final result = await HYHttpBaseRequest.request(url);
    final dataResult = result["data"];
    HYHomeDataVideoModelEntity homeDataVideoModelEntity = HYHomeDataVideoModelEntity.fromJson(dataResult);
    print(homeDataVideoModelEntity);
    return homeDataVideoModelEntity;
  }
}