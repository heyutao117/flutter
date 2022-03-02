import 'package:travel_jp/generated/json/base/json_convert_content.dart';
import 'package:travel_jp/model/knowledge_data_readingpage_entity.dart';

HYKnowledgeDataReadingpageEntity $HYKnowledgeDataReadingpageEntityFromJson(Map<String, dynamic> json) {
	final HYKnowledgeDataReadingpageEntity hYKnowledgeDataReadingpageEntity = HYKnowledgeDataReadingpageEntity();
	final List<KnowledgeDataReadingpageArticles>? articles = jsonConvert.convertListNotNull<KnowledgeDataReadingpageArticles>(json['articles']);
	if (articles != null) {
		hYKnowledgeDataReadingpageEntity.articles = articles;
	}
	final String? nomoredata = jsonConvert.convert<String>(json['nomoredata']);
	if (nomoredata != null) {
		hYKnowledgeDataReadingpageEntity.nomoredata = nomoredata;
	}
	return hYKnowledgeDataReadingpageEntity;
}

Map<String, dynamic> $HYKnowledgeDataReadingpageEntityToJson(HYKnowledgeDataReadingpageEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['articles'] =  entity.articles.map((v) => v.toJson()).toList();
	data['nomoredata'] = entity.nomoredata;
	return data;
}

KnowledgeDataReadingpageArticles $KnowledgeDataReadingpageArticlesFromJson(Map<String, dynamic> json) {
	final KnowledgeDataReadingpageArticles knowledgeDataReadingpageArticles = KnowledgeDataReadingpageArticles();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		knowledgeDataReadingpageArticles.id = id;
	}
	final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
	if (imageUrl != null) {
		knowledgeDataReadingpageArticles.imageUrl = imageUrl;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		knowledgeDataReadingpageArticles.title = title;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		knowledgeDataReadingpageArticles.url = url;
	}
	return knowledgeDataReadingpageArticles;
}

Map<String, dynamic> $KnowledgeDataReadingpageArticlesToJson(KnowledgeDataReadingpageArticles entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['imageUrl'] = entity.imageUrl;
	data['title'] = entity.title;
	data['url'] = entity.url;
	return data;
}