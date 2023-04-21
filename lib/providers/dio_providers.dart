
import 'dart:convert';

import 'package:dio/dio.dart';


class DioProvider{
  final dio = Dio();
  Future<dynamic>getToken(String email,String password) async {
    try{
      var response= await dio.post('http://127.0.0.1:8000/api/login',
      data: {'email':email,
             'password':password});

      if(response.statusCode == 200 || response.data !=''){
        return response.data;
      }
    } catch (error) {
     if(error is DioError) {
      print(error.message);
     } else {
      return error;
     }
    }
  }

  Future<dynamic>getUser(String token) async {
    try{
      var user = await dio.get<String>('http://127.0.0.1:8000/api/user',
      options: Options(headers: {
       
        // 'contentType': 'application/json',
        'Authorization':'Bearer $token'
        }));

      if(user.statusCode == 200 || user.data !=''){
        return json.encode(user.data);
      }
    } catch (error) {
      if(error is DioError){
        print(error.message);

      } else {
        return error;
      }
    }
  }
}