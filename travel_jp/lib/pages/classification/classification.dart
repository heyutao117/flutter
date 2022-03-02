
import 'package:flutter/material.dart';
import 'package:travel_jp/Common/service/http_classification_request.dart';
import 'package:travel_jp/model/classification_data_model_entity.dart';
import 'package:travel_jp/pages/classification/classification_videos_page.dart';

class HYClassificationPage extends StatelessWidget {
  const HYClassificationPage({Key? key}) : super(key: key);
  static const String routerName = "/classificationPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("专辑"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: HYClassificationRequest.classificationRequest(),
        builder: (context, snapshot){
          switch (snapshot.connectionState){
            case ConnectionState.waiting:
            case ConnectionState.none:
              {
                return const Center(child: CircularProgressIndicator());
              }
              break;
            default:
              {
                if(snapshot.hasError){
                  return const Center(
                    child: Text("获取数据失败"),
                  );
                }else{
                  List<HYClassificationDataModelEntity>list = snapshot.data as List<HYClassificationDataModelEntity>;
                  return ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, HYClassificationVideosPage.routerName,arguments:list[index]);
                            },
                            child: Image.network(
                                list[index].backImg,
                              fit: BoxFit.fitHeight,
                              loadingBuilder:(context, child, loadingProgress){
                                  if(loadingProgress ==null){
                                    return child;
                                  }
                                  return Container(
                                    alignment: Alignment.center,
                                    child: CircularProgressIndicator(
                                      value: loadingProgress.expectedTotalBytes!=null?loadingProgress.cumulativeBytesLoaded/loadingProgress.expectedTotalBytes!:null),
                                    );
                              },
                            ),
                          ),
                        );
                      });
                }

              }
          }
        },
      ),
    );
  }
}
