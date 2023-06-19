import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../core/constants/app/app_constants.dart';
import '../core/modules/memory/cache_maneger.dart';
import '../product/auth/login/model/login_model.dart';

class AuthProvider extends ChangeNotifier {
  Future login({required String email, required String password}) async {
    try {
      var response = await Dio().post(
        "${AppConstants.BASE_URL}/login",
        data: {"email": email, "password": password},
      );

      if (response.statusCode == 200) {
        if (response.data["success"] == true) {
          CacheManeger.saveToken(response.data["data"]["access_token"]);
          CacheManeger.setBoolValue("isLogin", true);
        }

        LoginModel loginModel = LoginModel.fromJson(response.data);

        return {"success": true};
      } else {
        throw Exception(response.data["message"]);
      }
    } on DioError catch (error) {
      return error;
    }
  }

  Future register({
    required String fullName,
    required String userName,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      var response = await Dio().post(
        "${AppConstants.BASE_URL}/register",
        data: {
          "fullName": fullName,
          "userName": userName,
          "email": email,
          "password": password,
          "password_confirmation": passwordConfirmation,
        },
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(response.data["message"]);
      }
    } catch (error) {
      return error;
    }
  }

  Future sendCode({required String email}) async {
    try {
      var response = await Dio().post(
        "${AppConstants.BASE_URL}/password-request",
        data: {"email": email},
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(response.data["message"]);
      }
    } catch (error) {
      return error;
    }
  }
}
