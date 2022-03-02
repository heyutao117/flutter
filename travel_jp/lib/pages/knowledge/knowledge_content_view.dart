
import 'package:flutter/material.dart';
import 'package:travel_jp/Common/service/http_knowledge_request.dart';
import 'package:travel_jp/model/knowledge_data_readingpage_entity.dart';
import 'package:travel_jp/pages/home/webview_page.dart';


class HYKnowledgeContentView extends StatelessWidget {
  final int tid;
  const HYKnowledgeContentView({Key? key, required this.tid}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: HYHttpKnowledgeRequest.readingPageRequest(tid),
        builder: (context, snapshot){
          switch (snapshot.connectionState){
            case ConnectionState.waiting:
            case ConnectionState.none:
              {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              break;
            default :
              {
                if(snapshot.hasError){
                  return const Center(child: Text("获取数据失败"),);
                }
                HYKnowledgeDataReadingpageEntity knowledgeDataReadingpageEntity = snapshot.data as HYKnowledgeDataReadingpageEntity;
                return ListView.builder(
                    itemCount: knowledgeDataReadingpageEntity.articles.length,
                    itemBuilder: (context, index){
                      KnowledgeDataReadingpageArticles articles = knowledgeDataReadingpageEntity.articles[index];
                      return GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, HYwebviewPage.routerName,arguments: {"title":articles.title,"url":articles.url});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10,),
                                Image.network(
                                  articles.imageUrl,
                                  fit: BoxFit.fitHeight,
                                  height: 200,
                                  loadingBuilder: (context,child,longprogress){
                                    if (longprogress == null) {
                                      return child;
                                    }
                                    return Container(
                                      alignment: Alignment.center,
                                      child: CircularProgressIndicator(
                                        value: longprogress.expectedTotalBytes != null
                                            ? longprogress.cumulativeBytesLoaded /
                                            longprogress.expectedTotalBytes!
                                            : null,
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(height: 10,),
                                Text(articles.title,textAlign: TextAlign.left,style: const TextStyle(fontSize: 18),),
                              ],
                          ),
                        ),
                      );
                    });
              }
          }

    }
    );
  }
}
