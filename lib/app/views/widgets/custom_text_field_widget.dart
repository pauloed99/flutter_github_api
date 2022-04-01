import 'package:flutter/material.dart';
import 'package:flutter_github_api/app/controllers/user_controller.dart';
import 'package:get/get.dart';

class CustomTextFieldWidget extends GetView<UserController> {
  const CustomTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return TextField(
      controller: controller.inputController,
      decoration: InputDecoration(
        hintText: 'Digite o usuário do github',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(width * .07),
        ),
        labelText: 'Nome do usuário',
        labelStyle: TextStyle(fontSize: width * .045),
        prefixIcon: const Icon(Icons.search),
      ),
      onChanged: (value) => controller.getAnyUser()
    );
  }
}
