import 'package:travel_jp/generated/json/base/json_convert_content.dart';
import 'package:travel_jp/model/classification_videos_model_entity.dart';

HYClassificationVideosModelEntity $ClassificationVideosModelEntityFromJson(Map<String, dynamic> json) {
	final HYClassificationVideosModelEntity classificationVideosModelEntity = HYClassificationVideosModelEntity();
	final String? ykid = jsonConvert.convert<String>(json['ykid']);
	if (ykid != null) {
		classificationVideosModelEntity.ykid = ykid;
	}
	final String? yksecret = jsonConvert.convert<String>(json['yksecret']);
	if (yksecret != null) {
		classificationVideosModelEntity.yksecret = yksecret;
	}
	final List<ClassificationVideosModelVlist>? vlist = jsonConvert.convertListNotNull<ClassificationVideosModelVlist>(json['vlist']);
	if (vlist != null) {
		classificationVideosModelEntity.vlist = vlist;
	}
	return classificationVideosModelEntity;
}

Map<String, dynamic> $ClassificationVideosModelEntityToJson(HYClassificationVideosModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ykid'] = entity.ykid;
	data['yksecret'] = entity.yksecret;
	data['vlist'] =  entity.vlist.map((v) => v.toJson()).toList();
	return data;
}

ClassificationVideosModelVlist $ClassificationVideosModelVlistFromJson(Map<String, dynamic> json) {
	final ClassificationVideosModelVlist classificationVideosModelVlist = ClassificationVideosModelVlist();
	final int? videoId = jsonConvert.convert<int>(json['videoId']);
	if (videoId != null) {
		classificationVideosModelVlist.videoId = videoId;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		classificationVideosModelVlist.title = title;
	}
	final String? backImg = jsonConvert.convert<String>(json['backImg']);
	if (backImg != null) {
		classificationVideosModelVlist.backImg = backImg;
	}
	final ClassificationVideosModelVlistVideo? video = jsonConvert.convert<ClassificationVideosModelVlistVideo>(json['video']);
	if (video != null) {
		classificationVideosModelVlist.video = video;
	}
	return classificationVideosModelVlist;
}

Map<String, dynamic> $ClassificationVideosModelVlistToJson(ClassificationVideosModelVlist entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['videoId'] = entity.videoId;
	data['title'] = entity.title;
	data['backImg'] = entity.backImg;
	data['video'] = entity.video.toJson();
	return data;
}

ClassificationVideosModelVlistVideo $ClassificationVideosModelVlistVideoFromJson(Map<String, dynamic> json) {
	final ClassificationVideosModelVlistVideo classificationVideosModelVlistVideo = ClassificationVideosModelVlistVideo();
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		classificationVideosModelVlistVideo.type = type;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		classificationVideosModelVlistVideo.url = url;
	}
	final String? download = jsonConvert.convert<String>(json['download']);
	if (download != null) {
		classificationVideosModelVlistVideo.download = download;
	}
	return classificationVideosModelVlistVideo;
}

Map<String, dynamic> $ClassificationVideosModelVlistVideoToJson(ClassificationVideosModelVlistVideo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	data['url'] = entity.url;
	data['download'] = entity.download;
	return data;
}