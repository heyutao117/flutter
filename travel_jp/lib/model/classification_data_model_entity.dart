import 'dart:convert';
import 'package:travel_jp/generated/json/base/json_field.dart';
import 'package:travel_jp/generated/json/classification_data_model_entity.g.dart';

@JsonSerializable()
class HYClassificationDataModelEntity {

	late String mainId;
	late String title;
	late String backImg;
  
  HYClassificationDataModelEntity();
  factory HYClassificationDataModelEntity.fromJson(Map<String, dynamic> json) => $HYClassificationDataModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $HYClassificationDataModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}