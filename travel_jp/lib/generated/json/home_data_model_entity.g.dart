import 'package:travel_jp/generated/json/base/json_convert_content.dart';
import 'package:travel_jp/model/home_data_model_entity.dart';

HYHomeDataModelEntity $HYHomeDataModelEntityFromJson(Map<String, dynamic> json) {
	final HYHomeDataModelEntity hYHomeDataModelEntity = HYHomeDataModelEntity();
	final List<HomeDataModelReadtype1>? readtype1 = jsonConvert.convertListNotNull<HomeDataModelReadtype1>(json['readtype1']);
	if (readtype1 != null) {
		hYHomeDataModelEntity.readtype1 = readtype1;
	}
	final List<HomeDataModelReadtype2>? readtype2 = jsonConvert.convertListNotNull<HomeDataModelReadtype2>(json['readtype2']);
	if (readtype2 != null) {
		hYHomeDataModelEntity.readtype2 = readtype2;
	}
	final String? ykid = jsonConvert.convert<String>(json['ykid']);
	if (ykid != null) {
		hYHomeDataModelEntity.ykid = ykid;
	}
	final String? yksecret = jsonConvert.convert<String>(json['yksecret']);
	if (yksecret != null) {
		hYHomeDataModelEntity.yksecret = yksecret;
	}
	final List<HomeDataModelSliding>? sliding = jsonConvert.convertListNotNull<HomeDataModelSliding>(json['sliding']);
	if (sliding != null) {
		hYHomeDataModelEntity.sliding = sliding;
	}
	final List<HomeDataModelVideos>? videos = jsonConvert.convertListNotNull<HomeDataModelVideos>(json['videos']);
	if (videos != null) {
		hYHomeDataModelEntity.videos = videos;
	}
	return hYHomeDataModelEntity;
}

Map<String, dynamic> $HYHomeDataModelEntityToJson(HYHomeDataModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['readtype1'] =  entity.readtype1.map((v) => v.toJson()).toList();
	data['readtype2'] =  entity.readtype2.map((v) => v.toJson()).toList();
	data['ykid'] = entity.ykid;
	data['yksecret'] = entity.yksecret;
	data['sliding'] =  entity.sliding.map((v) => v.toJson()).toList();
	data['videos'] =  entity.videos.map((v) => v.toJson()).toList();
	return data;
}

HomeDataModelReadtype1 $HomeDataModelReadtype1FromJson(Map<String, dynamic> json) {
	final HomeDataModelReadtype1 homeDataModelReadtype1 = HomeDataModelReadtype1();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		homeDataModelReadtype1.id = id;
	}
	final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
	if (imageUrl != null) {
		homeDataModelReadtype1.imageUrl = imageUrl;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeDataModelReadtype1.title = title;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		homeDataModelReadtype1.url = url;
	}
	return homeDataModelReadtype1;
}

Map<String, dynamic> $HomeDataModelReadtype1ToJson(HomeDataModelReadtype1 entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['imageUrl'] = entity.imageUrl;
	data['title'] = entity.title;
	data['url'] = entity.url;
	return data;
}

HomeDataModelReadtype2 $HomeDataModelReadtype2FromJson(Map<String, dynamic> json) {
	final HomeDataModelReadtype2 homeDataModelReadtype2 = HomeDataModelReadtype2();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		homeDataModelReadtype2.id = id;
	}
	final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
	if (imageUrl != null) {
		homeDataModelReadtype2.imageUrl = imageUrl;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeDataModelReadtype2.title = title;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		homeDataModelReadtype2.url = url;
	}
	return homeDataModelReadtype2;
}

Map<String, dynamic> $HomeDataModelReadtype2ToJson(HomeDataModelReadtype2 entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['imageUrl'] = entity.imageUrl;
	data['title'] = entity.title;
	data['url'] = entity.url;
	return data;
}

HomeDataModelSliding $HomeDataModelSlidingFromJson(Map<String, dynamic> json) {
	final HomeDataModelSliding homeDataModelSliding = HomeDataModelSliding();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		homeDataModelSliding.id = id;
	}
	final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
	if (imageUrl != null) {
		homeDataModelSliding.imageUrl = imageUrl;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeDataModelSliding.title = title;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		homeDataModelSliding.url = url;
	}
	return homeDataModelSliding;
}

Map<String, dynamic> $HomeDataModelSlidingToJson(HomeDataModelSliding entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['imageUrl'] = entity.imageUrl;
	data['title'] = entity.title;
	data['url'] = entity.url;
	return data;
}

HomeDataModelVideos $HomeDataModelVideosFromJson(Map<String, dynamic> json) {
	final HomeDataModelVideos homeDataModelVideos = HomeDataModelVideos();
	final HomeDataModelVideosAlbum? album = jsonConvert.convert<HomeDataModelVideosAlbum>(json['album']);
	if (album != null) {
		homeDataModelVideos.album = album;
	}
	final List<HomeDataModelVideosList>? list = jsonConvert.convertListNotNull<HomeDataModelVideosList>(json['list']);
	if (list != null) {
		homeDataModelVideos.list = list;
	}
	return homeDataModelVideos;
}

Map<String, dynamic> $HomeDataModelVideosToJson(HomeDataModelVideos entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['album'] = entity.album.toJson();
	data['list'] =  entity.list.map((v) => v.toJson()).toList();
	return data;
}

HomeDataModelVideosAlbum $HomeDataModelVideosAlbumFromJson(Map<String, dynamic> json) {
	final HomeDataModelVideosAlbum homeDataModelVideosAlbum = HomeDataModelVideosAlbum();
	final String? mainId = jsonConvert.convert<String>(json['mainId']);
	if (mainId != null) {
		homeDataModelVideosAlbum.mainId = mainId;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeDataModelVideosAlbum.title = title;
	}
	final String? backImg = jsonConvert.convert<String>(json['backImg']);
	if (backImg != null) {
		homeDataModelVideosAlbum.backImg = backImg;
	}
	return homeDataModelVideosAlbum;
}

Map<String, dynamic> $HomeDataModelVideosAlbumToJson(HomeDataModelVideosAlbum entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['mainId'] = entity.mainId;
	data['title'] = entity.title;
	data['backImg'] = entity.backImg;
	return data;
}

HomeDataModelVideosList $HomeDataModelVideosListFromJson(Map<String, dynamic> json) {
	final HomeDataModelVideosList homeDataModelVideosList = HomeDataModelVideosList();
	final int? videoId = jsonConvert.convert<int>(json['videoId']);
	if (videoId != null) {
		homeDataModelVideosList.videoId = videoId;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeDataModelVideosList.title = title;
	}
	final String? backImg = jsonConvert.convert<String>(json['backImg']);
	if (backImg != null) {
		homeDataModelVideosList.backImg = backImg;
	}
	final HomeDataModelVideosListVideo? video = jsonConvert.convert<HomeDataModelVideosListVideo>(json['video']);
	if (video != null) {
		homeDataModelVideosList.video = video;
	}
	return homeDataModelVideosList;
}

Map<String, dynamic> $HomeDataModelVideosListToJson(HomeDataModelVideosList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['videoId'] = entity.videoId;
	data['title'] = entity.title;
	data['backImg'] = entity.backImg;
	data['video'] = entity.video.toJson();
	return data;
}

HomeDataModelVideosListVideo $HomeDataModelVideosListVideoFromJson(Map<String, dynamic> json) {
	final HomeDataModelVideosListVideo homeDataModelVideosListVideo = HomeDataModelVideosListVideo();
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		homeDataModelVideosListVideo.type = type;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		homeDataModelVideosListVideo.url = url;
	}
	final String? download = jsonConvert.convert<String>(json['download']);
	if (download != null) {
		homeDataModelVideosListVideo.download = download;
	}
	return homeDataModelVideosListVideo;
}

Map<String, dynamic> $HomeDataModelVideosListVideoToJson(HomeDataModelVideosListVideo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	data['url'] = entity.url;
	data['download'] = entity.download;
	return data;
}