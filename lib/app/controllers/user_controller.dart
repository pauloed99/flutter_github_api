import 'package:flutter/material.dart';
import 'package:flutter_github_api/app/data/models/user.dart';
import 'package:flutter_github_api/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class UserController extends GetxController with StateMixin<User> {
  final UserRepository userRepository;

  final inputController = TextEditingController();

  UserController({required this.userRepository});

  @override
  void onInit() {
    super.onInit();
    getAnyUser();
  }

  void getAnyUser() async {
    final name = inputController.text;
    if (name == '') {
      change(null, status: RxStatus.empty());
    } else {
      userRepository.getAnyUser(name).then(
        (user) => change(user, status: RxStatus.success()),
        onError: (err) => change(null, status: RxStatus.error(err.toString())));
    }
  }
}
