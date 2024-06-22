import 'package:dio/dio.dart';

abstract class BaseServices {
  String baseUrl = "http://127.0.0.1:8000/api";
  Dio dio = Dio();
  late  Response response;
}
