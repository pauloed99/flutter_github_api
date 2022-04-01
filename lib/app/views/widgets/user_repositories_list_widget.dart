import 'package:flutter/material.dart';
import 'package:flutter_github_api/app/controllers/user_repositories_controller.dart';
import 'package:flutter_github_api/app/views/widgets/custom_text_widget.dart';
import 'package:flutter_github_api/app/views/widgets/info_repo_card_widget.dart';
import 'package:get/get.dart';

class UserRepositoriesListWidget extends GetView<UserRepositoriesController> {
  const UserRepositoriesListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return controller.obx(
      (state) => Align(
        child: SizedBox(
          width: width * .9,
          child: ListView.builder(
            itemCount: state!.length,
            itemBuilder: (_, index) => InfoRepoCardWidget(
              userRepositories: state[index],
            ),
          ),
        ),
      ),
      onError: (err) => CustomTextWidget(
        text: err.toString(),
      ),
    );
  }
}
