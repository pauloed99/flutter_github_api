import 'package:flutter/material.dart';
import 'package:flutter_github_api/app/views/widgets/custom_text_widget.dart';
import 'package:flutter_github_api/app/views/widgets/user_repositories_list_widget.dart';
import 'package:get/get.dart';

class UserRepositoriesPage extends StatelessWidget {
  const UserRepositoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;
    return Scaffold(
      appBar: AppBar(
        title: const CustomTextWidget(
          text: 'Lista de Repositórios',
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: width * .04,
              top: height * .04,
              bottom: height * .05,
            ),
            child: CustomTextWidget(
              text: 'Repositórios do usuário: ${Get.arguments}',
              fontSize: width * .05,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(child: UserRepositoriesListWidget()),
        ],
      ),
    );
  }
}
