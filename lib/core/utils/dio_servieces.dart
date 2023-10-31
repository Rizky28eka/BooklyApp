import 'package:dio/dio.dart';
class DioServices {

  final baseUrl="https://www.googleapis.com/books/v1/";
  final Dio _dio;
  DioServices(this._dio);
  Future<Map<String,dynamic>>get({required String endPoints})async{
    var response= await _dio.get('$baseUrl$endPoints');
    return response.data;
  }

}