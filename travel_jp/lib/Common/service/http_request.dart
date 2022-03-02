
import 'package:dio/dio.dart';
import 'package:travel_jp/Common/service/http_config.dart';

class HYHttpBaseRequest{
 static BaseOptions baseOptions = BaseOptions(
    connectTimeout: timeout,
    baseUrl: baseurl
  );
 static Dio dio = Dio(baseOptions);
 static Future<T> request<T>(String url,{String method="get",Map<String,dynamic>?params}) async{
    Options options = Options();
    options.method = method;
    try {
      Response response = await dio.request(url,queryParameters: params,options: options);
      return response.data;
    }on DioError catch(e){
     rethrow;
    }
 }
}