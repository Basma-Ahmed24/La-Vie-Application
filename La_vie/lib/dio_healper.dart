
import 'package:dio/dio.dart';
import 'package:la_vie/sharedpreferences.dart';

class DioHelper{
  static Dio ?dio;
  static init(){
    dio=Dio(BaseOptions(
      baseUrl:"https://lavie.orangedigitalcenteregypt.com",
      receiveDataWhenStatusError: true,
headers: {
  'Content-Type': 'application/json'

}

    ));
  }
  static Future<Response> getData({required String endpoint,String? token})async{

    dio?.options.headers={
      'Authorization': "Bearer ${CacheHelper.getData(key: "apiToken")}",

    };
    return await dio!.get(endpoint);
  }
 // static Future <Response>patchData({}){

//}
  static Future <Response>postData({
    required String endpoint,
    String ?token,
    required Map<String,dynamic>data
  })async{
    dio?.options.headers={
      'Authorization': token,

    };
    return dio!.post(endpoint,data: data);
  }
  static Future <Response>patchData({
    required String endpoint,
    String ?token,
    required Map<String,dynamic>data
  })async{
    dio?.options.headers={
      'Authorization': "Bearer ${CacheHelper.getData(key: "apiToken")}",

    };
    return dio!.patch(endpoint,data: data);
  }
}