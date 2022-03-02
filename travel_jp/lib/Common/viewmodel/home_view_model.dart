import 'package:flutter/cupertino.dart';
import '../../model/home_data_model_entity.dart';

class HYHomeProvider extends ChangeNotifier{
   late HYHomeDataModelEntity _homeDataModelEntity;

   HYHomeDataModelEntity get homeDataModelEntity => _homeDataModelEntity;

  set homeDataModelEntity(HYHomeDataModelEntity value) {
    _homeDataModelEntity = value;
    notifyListeners();
  }
}