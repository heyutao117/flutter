import 'dart:convert';
import 'package:travel_jp/generated/json/base/json_field.dart';
import 'package:travel_jp/generated/json/knowledge_data_readingpage_entity.g.dart';

@JsonSerializable()
class HYKnowledgeDataReadingpageEntity {

	late List<KnowledgeDataReadingpageArticles> articles;
	late String nomoredata;
  
  HYKnowledgeDataReadingpageEntity();

  factory HYKnowledgeDataReadingpageEntity.fromJson(Map<String, dynamic> json) => $HYKnowledgeDataReadingpageEntityFromJson(json);

  Map<String, dynamic> toJson() => $HYKnowledgeDataReadingpageEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class KnowledgeDataReadingpageArticles {

	late String id;
	late String imageUrl;
	late String title;
	late String url;
  
  KnowledgeDataReadingpageArticles();

  factory KnowledgeDataReadingpageArticles.fromJson(Map<String, dynamic> json) => $KnowledgeDataReadingpageArticlesFromJson(json);

  Map<String, dynamic> toJson() => $KnowledgeDataReadingpageArticlesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}