import 'package:travel_jp/generated/json/base/json_convert_content.dart';
import 'package:travel_jp/model/classification_data_model_entity.dart';

HYClassificationDataModelEntity $HYClassificationDataModelEntityFromJson(Map<String, dynamic> json) {
	final HYClassificationDataModelEntity hYClassificationDataModelEntity = HYClassificationDataModelEntity();
	final String? mainId = jsonConvert.convert<String>(json['mainId']);
	if (mainId != null) {
		hYClassificationDataModelEntity.mainId = mainId;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		hYClassificationDataModelEntity.title = title;
	}
	final String? backImg = jsonConvert.convert<String>(json['backImg']);
	if (backImg != null) {
		hYClassificationDataModelEntity.backImg = backImg;
	}
	return hYClassificationDataModelEntity;
}

Map<String, dynamic> $HYClassificationDataModelEntityToJson(HYClassificationDataModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['mainId'] = entity.mainId;
	data['title'] = entity.title;
	data['backImg'] = entity.backImg;
	return data;
}