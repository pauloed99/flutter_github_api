import 'package:flutter/material.dart';
import 'package:flutter_github_api/app/controllers/user_controller.dart';
import 'package:flutter_github_api/app/views/widgets/custom_text_field_widget.dart';
import 'package:flutter_github_api/app/views/widgets/custom_text_widget.dart';
import 'package:flutter_github_api/app/views/widgets/user_card_widget.dart';

import 'package:get/get.dart';

class UserSearchPage extends GetView<UserController> {
  const UserSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Scaffold(
      appBar: AppBar(
        title: const CustomTextWidget(text: 'Pesquisa de usuário do github'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: height * .08),
        padding: EdgeInsets.symmetric(horizontal: width * .08),
        child: Column(
          children: [
            const CustomTextFieldWidget(),
            SizedBox(height: height * .1),
            controller.obx(
              (state) => const UserCardWidget(),
              onError: (error) => CustomTextWidget(
                text: error.toString(),
                fontSize: width * .05,
              ),
            )
          ],
        ),
      ),
    );
  }
}
