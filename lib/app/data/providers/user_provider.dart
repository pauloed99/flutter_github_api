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
      if (e.response!.statusCode == 404) {
        throw Exception('Usuário não encontrado!');
      }
      if (e.response!.statusCode == 403) {
        throw Exception(
          'O servidor atingiu um número máximo de requisições, tente mais tarde!',
        );
      } else {
        throw Exception('Conecte-se à internet');
      }
    }
  }
}
