import 'package:dio/dio.dart';
import 'package:dpt_apps/core/config/endPoint.dart';
import 'package:dpt_apps/core/models/auth_model.dart';
import 'package:dpt_apps/core/utils/toast_utils.dart';


class AuthServices{
  static Dio dio =  new Dio();

  static Future<auth_model> login(Map loginData)async{
    try{
      var response = await dio.post(
        Endpoint.login,
        data: FormData.fromMap(loginData),
        // options: Options(headers: {"Accept" : "application/json"})
        options: Options(headers: {"Accept" : "application/x-www-form-urlencoded"})
      );

      return auth_model.fromJson(response.data);
    }catch(e){
      print("ERRR: "+e.toString());
      ToastUtils.show("Please check your Connection");
    }
  }
}