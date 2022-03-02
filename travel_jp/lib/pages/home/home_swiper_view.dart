import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';
import 'package:travel_jp/Common/viewmodel/home_view_model.dart';
import 'package:travel_jp/model/home_data_model_entity.dart';
import 'package:travel_jp/pages/home/webview_page.dart';

class HYHomeSwiperView extends StatelessWidget {
  const HYHomeSwiperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HYHomeDataModelEntity homeDataModelEntity = Provider.of<HYHomeProvider>(context).homeDataModelEntity;
    return  SizedBox(
      height: 200,
      child: Swiper(
        itemCount: homeDataModelEntity.sliding.length,
        autoplay: true,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
        itemBuilder:(BuildContext context, int index){
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Image.network(
                homeDataModelEntity.sliding[index].imageUrl,
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
              onTap: (){
                Navigator.pushNamed(context, HYwebviewPage.routerName,arguments: {"title":homeDataModelEntity.sliding[index].title,"url":homeDataModelEntity.sliding[index].url} );
              },
            ),

          );
        },

      ),
    );;
  }
}


