import 'dart:convert';

import 'package:dio/dio.dart';

import 'model/user_info_model.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://subul.cyclic.app/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  static Future<Response?> PostData({
    required Map<String, dynamic> postdata,
    required String url,
  }) async {
    try {
      return await dio?.post(url, data: postdata);
    } catch (e) {
      rethrow;
    }
  }

  // ignore: non_constant_identifier_names
  static Future<Response?> GetData({
    required String url,
    required Map<String, dynamic> quary,
  }) async {
    try {
      return await dio?.get(
        url,
        queryParameters: quary,
      );
    } catch (e) {
      print(e);
    }
  }

  static Future<List<User_info>?> GetUserInfo({
    required String url,
  }) async {
    try {
      await dio
          ?.get(
        url,
      )
          .then((response) {
        List<User_info> userInfo = (json.decode(response.data))
            .map<User_info>((user_info) => User_info.fromJson(user_info));

        return userInfo;
      });
    } catch (e) {
      print("from get fun");
      print(e);
    }
  }
}
