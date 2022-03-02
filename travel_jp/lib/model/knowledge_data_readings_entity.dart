import 'dart:convert';
import 'package:travel_jp/generated/json/base/json_field.dart';
import 'package:travel_jp/generated/json/knowledge_data_readings_entity.g.dart';

@JsonSerializable()
class HYKnowledgeDataReadingsEntity {

	late List<KnowledgeDataReadingsReadings> readings;
  
  HYKnowledgeDataReadingsEntity();

  factory HYKnowledgeDataReadingsEntity.fromJson(Map<String, dynamic> json) => $HYKnowledgeDataReadingsEntityFromJson(json);

  Map<String, dynamic> toJson() => $HYKnowledgeDataReadingsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class KnowledgeDataReadingsReadings {

	late int tid;
	late String name;
  
  KnowledgeDataReadingsReadings();

  factory KnowledgeDataReadingsReadings.fromJson(Map<String, dynamic> json) => $KnowledgeDataReadingsReadingsFromJson(json);

  Map<String, dynamic> toJson() => $KnowledgeDataReadingsReadingsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}