import 'package:dio/dio.dart';
import 'package:iworth/utils/styles/stylings.dart';

class Httpserver {

  final Dio _dio = Dio();

  Httpserver(){
    _configDio();
  }

  void _configDio(){
    _dio.options = BaseOptions(
      baseUrl: "https://api.cryptorank.io/v1/",
      queryParameters: {
        'api_key': Stylings.myKey
      }
    );
  }


  Future<dynamic> get(String path) async{
    try{
      Response response = await _dio.get(path);
      return response.data;
    }catch(e){print(e);}
  }
}