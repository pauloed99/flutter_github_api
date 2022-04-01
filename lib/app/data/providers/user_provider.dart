import 'package:dio/dio.dart';
import 'package:flutter_github_api/app/data/models/user.dart';

class UserProvider {
  final Dio dio;

  UserProvider({required this.dio});

  Future<User> getAnyUser(String name) async {
    try {
      final response = await dio.get(name);
      final user = User.fromJson(response.data);
      return user;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
