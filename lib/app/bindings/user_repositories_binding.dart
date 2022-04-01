import 'package:dio/dio.dart';
import 'package:flutter_github_api/app/controllers/user_repositories_controller.dart';
import 'package:flutter_github_api/app/data/providers/user_repositories_provider.dart';
import 'package:flutter_github_api/app/data/repositories/user_repositories_repository.dart';
import 'package:flutter_github_api/app/utils/constants.dart';
import 'package:get/get.dart';

class UserRepositoriesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserRepositoriesController>(
      () => UserRepositoriesController(
        userRepositoriesRepository: UserRepositoriesRepository(
          userRepositoriesProvider: UserRepositoriesProvider(
            dio: Dio(
              BaseOptions(baseUrl: Constants.baseUrl),
            ),
          ),
        ),
      ),
    );
  }

}