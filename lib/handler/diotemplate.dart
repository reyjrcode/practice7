


import 'package:dio/dio.dart';
import 'package:practice7/Constant/apikey.dart';
import 'package:practice7/models/currentforcastmodel.dart';
import 'package:practice7/models/forecastmodel.dart';
import 'package:practice7/models/searchplacemodel.dart';

class ServiceApi {
  static final dio = Dio();

  static Future <Currentforecastmodel> currentforecastcall({String?url,q})async{
    final response = await dio.get("$url?key=$apikey&q=$q&aqi=yes");
    if(response.statusCode==200){
      return Currentforecastmodel.fromJson(response.data);

    }else{
      return response.data;
    }
  }

  static Future<List<Forecastday>> forecastcall({
    String? url,
    q,
    int? days,
  })async{
    final response = await dio.get("$url?key=$apikey&q=$q=&days&aqi=yes&alerts=no");

    if(response.statusCode==200){
      final List<dynamic>list = response.data["forecast"]["forecastday"];
      return list.map((e) => Forecastday.fromJson(e)).toList();
    }else{
      return response.data;
    }
  }
  static Future<List<Searchplace>> searchplacecall({String?url,q})async{
    final response = await dio.get("$url?key=$apikey&q=$q");
    if(response.statusCode==200){
      final List <dynamic> list = response.data;
       return list.map((e) => Searchplace.fromJson(e)).toList();
    }else{
      return response.data;
    }
  }
  
}