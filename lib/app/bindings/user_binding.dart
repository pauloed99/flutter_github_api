import 'package:dio/dio.dart';
import 'package:flutter_github_api/app/controllers/user_controller.dart';
import 'package:flutter_github_api/app/data/providers/user_provider.dart';
import 'package:flutter_github_api/app/data/repositories/user_repository.dart';
import 'package:flutter_github_api/app/utils/constants.dart';
import 'package:get/get.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(
      () => UserController(
        userRepository: UserRepository(
          userProvider: UserProvider(
            dio: Dio(
              BaseOptions(baseUrl: Constants.baseUrl),
            ),
          ),
        ),
      ),
    );
  }
}
