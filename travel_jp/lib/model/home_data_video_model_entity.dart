import 'dart:convert';
import 'package:travel_jp/generated/json/base/json_field.dart';
import 'package:travel_jp/generated/json/home_data_video_model_entity.g.dart';

@JsonSerializable()
class HYHomeDataVideoModelEntity {

	late String ykid;
	late String yksecret;
	late List<HomeDataVideoModelVlist> vlist;
  
  HYHomeDataVideoModelEntity();

  factory HYHomeDataVideoModelEntity.fromJson(Map<String, dynamic> json) => $HYHomeDataVideoModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $HYHomeDataVideoModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeDataVideoModelVlist {

	late int videoId;
	late String title;
	late String backImg;
	late HomeDataVideoModelVlistVideo video;
  
  HomeDataVideoModelVlist();

  factory HomeDataVideoModelVlist.fromJson(Map<String, dynamic> json) => $HomeDataVideoModelVlistFromJson(json);

  Map<String, dynamic> toJson() => $HomeDataVideoModelVlistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeDataVideoModelVlistVideo {

	late String type;
	late String url;
	late String download;
  
  HomeDataVideoModelVlistVideo();

  factory HomeDataVideoModelVlistVideo.fromJson(Map<String, dynamic> json) => $HomeDataVideoModelVlistVideoFromJson(json);

  Map<String, dynamic> toJson() => $HomeDataVideoModelVlistVideoToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}