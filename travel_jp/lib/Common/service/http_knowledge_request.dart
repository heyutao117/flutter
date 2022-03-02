import 'package:travel_jp/Common/service/http_request.dart';
import 'package:travel_jp/model/knowledge_data_readings_entity.dart';
import '../../model/knowledge_data_readingpage_entity.dart';

class HYHttpKnowledgeRequest{
  static Future<HYKnowledgeDataReadingsEntity>readingsRequest() async{
    const url = '/video/v3/readingtype?appname=baispribenlvyou&os=ios&version=6.7.0&udid=dd83183044eec7bed4a1134674e0d55d1dc2be8b&hardware=iphone';
    final result = await HYHttpBaseRequest.request(url);
    print(result["data"]);
    HYKnowledgeDataReadingsEntity knowledgeDataReadingsEntity = HYKnowledgeDataReadingsEntity.fromJson(result["data"]);
    return knowledgeDataReadingsEntity;
  }

  static Future<HYKnowledgeDataReadingpageEntity>readingPageRequest(int tid)async{
    final url = '/video/v3/readingpage?appname=baispribenlvyou&os=ios&version=6.7.0&udid=dd83183044eec7bed4a1134674e0d55d1dc2be8b&hardware=iphone&tid=$tid';
    final result = await HYHttpBaseRequest.request(url);
    print(result);
    HYKnowledgeDataReadingpageEntity knowledgeDataReadingpageEntity = HYKnowledgeDataReadingpageEntity.fromJson(result["data"]);
    return knowledgeDataReadingpageEntity;
  }
}