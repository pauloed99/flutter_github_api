import 'package:flutter/material.dart';
import 'package:flutter_github_api/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final UserRepository userRepository;

  final inputController = TextEditingController();

  UserController({required this.userRepository});
}
