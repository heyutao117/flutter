
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_jp/model/home_data_model_entity.dart';
import 'package:travel_jp/pages/home/webview_page.dart';

class HYHomeConentRaidersView extends StatelessWidget {
  final HYHomeDataModelEntity homeDataModelEntity ;
  const HYHomeConentRaidersView({Key? key, required this.homeDataModelEntity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200,
      width: ScreenUtil().screenWidth,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: homeDataModelEntity.readtype1.length,
          itemBuilder: (context,index){
            HomeDataModelReadtype1 dataModelRetype1 =  homeDataModelEntity.readtype1[index];
            return getContentWidget(dataModelRetype1,context);
          },
      ),
    );
  }

  Widget getContentWidget (HomeDataModelReadtype1 homeDataModelReadtype1,BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, HYwebviewPage.routerName,arguments: {"title":homeDataModelReadtype1.title,"url":homeDataModelReadtype1.url});
            },
            child: Image.network(
              homeDataModelReadtype1.imageUrl,
              // width: ScreenUtil().scaleWidth-50,
              fit: BoxFit.fitWidth,
              loadingBuilder:(BuildContext context, Widget child,  loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
            ),
          ),
         Align(
           alignment: Alignment.center,
           child: Container(
              padding: const EdgeInsets.all(5),
              child: Text(homeDataModelReadtype1.title,style: const TextStyle(color: Colors.white),),
              decoration:const BoxDecoration(
                color:Color(0x90000000),
              ) ,
           ),
         ),
        ],
      ),
    );
  }
}


