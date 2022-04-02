import 'package:dio/dio.dart';
import 'package:flutter_github_api/app/data/models/user_repositories.dart';

class UserRepositoriesProvider {
  final Dio dio;

  UserRepositoriesProvider({required this.dio});

  Future<List<UserRepositories>> getUserRepositories(String name) async {
    try {
      final response = await dio.get<List>('$name/repos');
      return response.data!.map((e) => UserRepositories.fromJson(e)).toList();
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
