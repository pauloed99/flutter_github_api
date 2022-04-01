import 'package:flutter_github_api/app/data/models/user_repositories.dart';
import 'package:flutter_github_api/app/data/providers/user_repositories_provider.dart';

class UserRepositoriesRepository {
  final UserRepositoriesProvider userRepositoriesProvider;

  UserRepositoriesRepository({required this.userRepositoriesProvider});

  Future<List<UserRepositories>> getUserRepositories(String name) =>
      userRepositoriesProvider.getUserRepositories(name);
}
