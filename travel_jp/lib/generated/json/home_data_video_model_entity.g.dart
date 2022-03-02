import 'package:travel_jp/generated/json/base/json_convert_content.dart';
import 'package:travel_jp/model/home_data_video_model_entity.dart';

HYHomeDataVideoModelEntity $HYHomeDataVideoModelEntityFromJson(Map<String, dynamic> json) {
	final HYHomeDataVideoModelEntity hYHomeDataVideoModelEntity = HYHomeDataVideoModelEntity();
	final String? ykid = jsonConvert.convert<String>(json['ykid']);
	if (ykid != null) {
		hYHomeDataVideoModelEntity.ykid = ykid;
	}
	final String? yksecret = jsonConvert.convert<String>(json['yksecret']);
	if (yksecret != null) {
		hYHomeDataVideoModelEntity.yksecret = yksecret;
	}
	final List<HomeDataVideoModelVlist>? vlist = jsonConvert.convertListNotNull<HomeDataVideoModelVlist>(json['vlist']);
	if (vlist != null) {
		hYHomeDataVideoModelEntity.vlist = vlist;
	}
	return hYHomeDataVideoModelEntity;
}

Map<String, dynamic> $HYHomeDataVideoModelEntityToJson(HYHomeDataVideoModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ykid'] = entity.ykid;
	data['yksecret'] = entity.yksecret;
	data['vlist'] =  entity.vlist.map((v) => v.toJson()).toList();
	return data;
}

HomeDataVideoModelVlist $HomeDataVideoModelVlistFromJson(Map<String, dynamic> json) {
	final HomeDataVideoModelVlist homeDataVideoModelVlist = HomeDataVideoModelVlist();
	final int? videoId = jsonConvert.convert<int>(json['videoId']);
	if (videoId != null) {
		homeDataVideoModelVlist.videoId = videoId;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeDataVideoModelVlist.title = title;
	}
	final String? backImg = jsonConvert.convert<String>(json['backImg']);
	if (backImg != null) {
		homeDataVideoModelVlist.backImg = backImg;
	}
	final HomeDataVideoModelVlistVideo? video = jsonConvert.convert<HomeDataVideoModelVlistVideo>(json['video']);
	if (video != null) {
		homeDataVideoModelVlist.video = video;
	}
	return homeDataVideoModelVlist;
}

Map<String, dynamic> $HomeDataVideoModelVlistToJson(HomeDataVideoModelVlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['videoId'] = entity.videoId;
	data['title'] = entity.title;
	data['backImg'] = entity.backImg;
	data['video'] = entity.video.toJson();
	return data;
}

HomeDataVideoModelVlistVideo $HomeDataVideoModelVlistVideoFromJson(Map<String, dynamic> json) {
	final HomeDataVideoModelVlistVideo homeDataVideoModelVlistVideo = HomeDataVideoModelVlistVideo();
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		homeDataVideoModelVlistVideo.type = type;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		homeDataVideoModelVlistVideo.url = url;
	}
	final String? download = jsonConvert.convert<String>(json['download']);
	if (download != null) {
		homeDataVideoModelVlistVideo.download = download;
	}
	return homeDataVideoModelVlistVideo;
}

Map<String, dynamic> $HomeDataVideoModelVlistVideoToJson(HomeDataVideoModelVlistVideo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	data['url'] = entity.url;
	data['download'] = entity.download;
	return data;
}