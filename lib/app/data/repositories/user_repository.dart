import 'package:flutter_github_api/app/data/models/user.dart';
import 'package:flutter_github_api/app/data/providers/user_provider.dart';

class UserRepository {
  final UserProvider userProvider;

  UserRepository({required this.userProvider});

  Future<User> getAnyUser(String name) => userProvider.getAnyUser(name);
}
