
import 'package:flutter/material.dart';
import 'package:travel_jp/Common/service/http_knowledge_request.dart';
import 'package:travel_jp/model/knowledge_data_readings_entity.dart';
import 'package:travel_jp/pages/knowledge/knowledge_content_view.dart';

class HYKnowledgePage extends StatelessWidget {
  const HYKnowledgePage({Key? key}) : super(key: key);
  static const String routerName = "/knowledgePage";

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: HYHttpKnowledgeRequest.readingsRequest(),
      builder: (context,snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            break;
          default :
            {
              if (snapshot.hasError) {
                return const Center(
                  child: Text("请求数据出错"),
                );
              }
              HYKnowledgeDataReadingsEntity knowledgeDataReadingsEntity = snapshot.data as HYKnowledgeDataReadingsEntity;
              return DefaultTabController(
                length: knowledgeDataReadingsEntity.readings.length,
                child: Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    toolbarHeight: 0,
                    bottom:  TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: buildGetTabbars(knowledgeDataReadingsEntity),
                    ),
                  ),

                  body: TabBarView(
                    children: buildGetContentView(knowledgeDataReadingsEntity),
                  ),
                ),
              );
            }
        }
      }
    );
  }
    List<Tab>buildGetTabbars(HYKnowledgeDataReadingsEntity knowledgeDataReadingsEntity){
       List <Tab>list= [];
       for( KnowledgeDataReadingsReadings item in knowledgeDataReadingsEntity.readings){
          list.add(Tab(text: item.name)) ;
       }
       return  list;
    }

    List<Widget>buildGetContentView(HYKnowledgeDataReadingsEntity knowledgeDataReadingsEntity){
      List<Widget>list = [];
      for(KnowledgeDataReadingsReadings readingsReadings in knowledgeDataReadingsEntity.readings){
         list.add(HYKnowledgeContentView(tid:readingsReadings.tid)) ;
      }
        return list;
    }
}
