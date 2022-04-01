import 'package:flutter/material.dart';
import 'package:flutter_github_api/app/views/widgets/info_user_card_widget.dart';
import 'package:get/get.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Container(
        height: height * .2,
        width: width * .9,
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
        child: const InfoUserCardWidget());
  }
}
