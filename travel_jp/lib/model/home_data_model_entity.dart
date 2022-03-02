import 'dart:convert';
import 'package:travel_jp/generated/json/base/json_field.dart';
import 'package:travel_jp/generated/json/home_data_model_entity.g.dart';

@JsonSerializable()
class HYHomeDataModelEntity {

	late List<HomeDataModelReadtype1> readtype1;
	late List<HomeDataModelReadtype2> readtype2;
	late String ykid;
	late String yksecret;
	late List<HomeDataModelSliding> sliding;
	late List<HomeDataModelVideos> videos;
  
  HYHomeDataModelEntity();

  factory HYHomeDataModelEntity.fromJson(Map<String, dynamic> json) => $HYHomeDataModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $HYHomeDataModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeDataModelReadtype1 {

	late String id;
	late String imageUrl;
	late String title;
	late String url;
  
  HomeDataModelReadtype1();

  factory HomeDataModelReadtype1.fromJson(Map<String, dynamic> json) => $HomeDataModelReadtype1FromJson(json);

  Map<String, dynamic> toJson() => $HomeDataModelReadtype1ToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeDataModelReadtype2 {

	late String id;
	late String imageUrl;
	late String title;
	late String url;
  
  HomeDataModelReadtype2();

  factory HomeDataModelReadtype2.fromJson(Map<String, dynamic> json) => $HomeDataModelReadtype2FromJson(json);

  Map<String, dynamic> toJson() => $HomeDataModelReadtype2ToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeDataModelSliding {

	late String id;
	late String imageUrl;
	late String title;
	late String url;
  
  HomeDataModelSliding();

  factory HomeDataModelSliding.fromJson(Map<String, dynamic> json) => $HomeDataModelSlidingFromJson(json);

  Map<String, dynamic> toJson() => $HomeDataModelSlidingToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeDataModelVideos {

	late HomeDataModelVideosAlbum album;
	late List<HomeDataModelVideosList> list;
  
  HomeDataModelVideos();

  factory HomeDataModelVideos.fromJson(Map<String, dynamic> json) => $HomeDataModelVideosFromJson(json);

  Map<String, dynamic> toJson() => $HomeDataModelVideosToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeDataModelVideosAlbum {

	late String mainId;
	late String title;
	late String backImg;
  
  HomeDataModelVideosAlbum();

  factory HomeDataModelVideosAlbum.fromJson(Map<String, dynamic> json) => $HomeDataModelVideosAlbumFromJson(json);

  Map<String, dynamic> toJson() => $HomeDataModelVideosAlbumToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeDataModelVideosList {

	late int videoId;
	late String title;
	late String backImg;
	late HomeDataModelVideosListVideo video;
  
  HomeDataModelVideosList();

  factory HomeDataModelVideosList.fromJson(Map<String, dynamic> json) => $HomeDataModelVideosListFromJson(json);

  Map<String, dynamic> toJson() => $HomeDataModelVideosListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HomeDataModelVideosListVideo {

	late String type;
	late String url;
	late String download;
  
  HomeDataModelVideosListVideo();

  factory HomeDataModelVideosListVideo.fromJson(Map<String, dynamic> json) => $HomeDataModelVideosListVideoFromJson(json);

  Map<String, dynamic> toJson() => $HomeDataModelVideosListVideoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}