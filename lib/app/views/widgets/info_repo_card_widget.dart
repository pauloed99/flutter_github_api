import 'package:flutter/material.dart';
import 'package:flutter_github_api/app/data/models/user_repositories.dart';
import 'package:flutter_github_api/app/views/widgets/custom_text_widget.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoRepoCardWidget extends StatelessWidget {
  final UserRepositories userRepositories;
  const InfoRepoCardWidget({
    Key? key,
    required this.userRepositories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;
    return Container(
      margin: EdgeInsets.only(bottom: height * .05),
      padding: EdgeInsets.only(
        left: width * .04,
        top: height * .015,
      ),
      alignment: Alignment.center,
      height: height * .2,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(
          width * .07,
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: userRepositories.name,
                fontWeight: FontWeight.bold,
                fontSize: width * .045,
              ),
              SizedBox(height: height * .01),
              CustomTextWidget(
                text: 'linguagem: ${userRepositories.language ?? ''}',
                fontWeight: FontWeight.bold,
                fontSize: width * .04,
              ),
              SizedBox(height: height * .02),
              CustomTextWidget(
                text: 'Criado em: ${userRepositories.createdAt}',
                fontWeight: FontWeight.bold,
                fontSize: width * .04,
              ),
              CustomTextWidget(
                text: 'Atualizado em: ${userRepositories.updatedAt}',
                fontWeight: FontWeight.bold,
                fontSize: width * .04,
              ),
              SizedBox(height: height * .01),
              Row(
                children: [
                  const Icon(Icons.star_rate, color: Colors.blue),
                  CustomTextWidget(
                    text: userRepositories.stargazersCount.toString(),
                    fontSize: width * .045,
                  ),
                  SizedBox(width: width * .3),
                  GestureDetector(
                    onTap: () => launch(userRepositories.htmlUrl),
                    child: CustomTextWidget(
                      text: 'Link do Repositório',
                      color: Colors.blue,
                      fontSize: width * .04,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
