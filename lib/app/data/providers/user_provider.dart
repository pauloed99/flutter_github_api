import 'package:dio/dio.dart';
import 'package:flutter_github_api/app/data/models/user.dart';
import 'package:flutter_github_api/app/utils/constants.dart';

class UserProvider {
  final Dio dio;

  UserProvider({required this.dio});

  Future<User> getAnyUser(String name) async {
    try {
      final response = await dio.get(Constants.baseUrl + 'users/$name');
      final user = User.fromJson(response.data);
      return user;
    } catch (e) {
      throw Exception('Erro no servidor');
    }
  }
}
