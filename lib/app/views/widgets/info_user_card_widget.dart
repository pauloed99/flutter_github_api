import 'package:flutter/material.dart';
import 'package:flutter_github_api/app/controllers/user_controller.dart';
import 'package:get/get.dart';

import 'custom_text_widget.dart';

class InfoUserCardWidget extends GetView<UserController> {
  const InfoUserCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(width * .07),
            bottomLeft: Radius.circular(width * .07),
          ),
          child: Image.network(
            controller.state!.avatarUrl,
            width: width * .3,
            height: height * .2,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(
                text: controller.state!.login,
                fontSize: width * .055,
              ),
              SizedBox(height: height * .01),
              CustomTextWidget(
                text: 'seguidores: ' + controller.state!.followers.toString(),
                fontSize: width * .045,
              ),
              SizedBox(width: width * .05),
              CustomTextWidget(
                text: 'seguindo: ' + controller.state!.followers.toString(),
                fontSize: width * .045,
              ),
              SizedBox(height: height * .02),
              GestureDetector(
                onTap: () => Get.toNamed(
                  'userRepos',
                  arguments: controller.state!.login,
                ),
                child: CustomTextWidget(
                  text: 'Ver Repositórios',
                  fontSize: width * .045,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
