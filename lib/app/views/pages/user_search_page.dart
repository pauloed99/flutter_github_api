import 'package:flutter/material.dart';
import 'package:flutter_github_api/app/views/widgets/custom_text_field_widget.dart';
import 'package:flutter_github_api/app/views/widgets/custom_text_widget.dart';
import 'package:flutter_github_api/app/views/widgets/repository_card_widget.dart';

import 'package:get/get.dart';

class UserSearchPage extends StatelessWidget {
  const UserSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    return Scaffold(
      appBar: AppBar(
        title: const CustomTextWidget(text: 'Lista de Usuários do Github'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: height * .08),
        child: Column(
          children: [
            CustomTextFieldWidget(),
            SizedBox(height: height * .1),
            RepositoryCardWidget(),
          ],
        ),
      ),
    );
  }
}
