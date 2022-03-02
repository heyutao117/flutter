import 'package:travel_jp/generated/json/base/json_convert_content.dart';
import 'package:travel_jp/model/knowledge_data_readings_entity.dart';

HYKnowledgeDataReadingsEntity $HYKnowledgeDataReadingsEntityFromJson(Map<String, dynamic> json) {
	final HYKnowledgeDataReadingsEntity hYKnowledgeDataReadingsEntity = HYKnowledgeDataReadingsEntity();
	final List<KnowledgeDataReadingsReadings>? readings = jsonConvert.convertListNotNull<KnowledgeDataReadingsReadings>(json['readings']);
	if (readings != null) {
		hYKnowledgeDataReadingsEntity.readings = readings;
	}
	return hYKnowledgeDataReadingsEntity;
}

Map<String, dynamic> $HYKnowledgeDataReadingsEntityToJson(HYKnowledgeDataReadingsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['readings'] =  entity.readings.map((v) => v.toJson()).toList();
	return data;
}

KnowledgeDataReadingsReadings $KnowledgeDataReadingsReadingsFromJson(Map<String, dynamic> json) {
	final KnowledgeDataReadingsReadings knowledgeDataReadingsReadings = KnowledgeDataReadingsReadings();
	final int? tid = jsonConvert.convert<int>(json['tid']);
	if (tid != null) {
		knowledgeDataReadingsReadings.tid = tid;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		knowledgeDataReadingsReadings.name = name;
	}
	return knowledgeDataReadingsReadings;
}

Map<String, dynamic> $KnowledgeDataReadingsReadingsToJson(KnowledgeDataReadingsReadings entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['tid'] = entity.tid;
	data['name'] = entity.name;
	return data;
}