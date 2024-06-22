import 'package:dio/dio.dart';

import '../../model/auth/login_model.dart';
import '../../model/auth/register_model.dart';
import '../base_services.dart';

class AuthentcationServices extends BaseServices {
  login(Login user) async {
    response = await dio.get(
      "$baseUrl/login",
      data: user.toJson(),
      options: Options(headers: {"Accept": "application/json"}),
    );
    print(response.data);
  }

  register(Register newUser) async {
    response = await dio.post("$baseUrl/register", data: newUser.toJson());
    print(response.data);
  }
}
