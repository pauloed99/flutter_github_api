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
      throw Exception(e.message);
    }
  }
}
