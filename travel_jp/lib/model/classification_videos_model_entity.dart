import 'dart:convert';
import 'package:travel_jp/generated/json/base/json_field.dart';
import 'package:travel_jp/generated/json/classification_videos_model_entity.g.dart';

@JsonSerializable()
class HYClassificationVideosModelEntity {

	late String ykid;
	late String yksecret;
	late List<ClassificationVideosModelVlist> vlist;
  
  HYClassificationVideosModelEntity();

  factory HYClassificationVideosModelEntity.fromJson(Map<String, dynamic> json) => $ClassificationVideosModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $ClassificationVideosModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ClassificationVideosModelVlist {

	late int videoId;
	late String title;
	late String backImg;
	late ClassificationVideosModelVlistVideo video;
  
  ClassificationVideosModelVlist();

  factory ClassificationVideosModelVlist.fromJson(Map<String, dynamic> json) => $ClassificationVideosModelVlistFromJson(json);

  Map<String, dynamic> toJson() => $ClassificationVideosModelVlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ClassificationVideosModelVlistVideo {

	late String type;
	late String url;
	late String download;
  
  ClassificationVideosModelVlistVideo();

  factory ClassificationVideosModelVlistVideo.fromJson(Map<String, dynamic> json) => $ClassificationVideosModelVlistVideoFromJson(json);

  Map<String, dynamic> toJson() => $ClassificationVideosModelVlistVideoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}