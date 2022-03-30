import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RepositoryCardWidget extends StatelessWidget {
  const RepositoryCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Container(
      height: height * .15,
      width: width * .9,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(
          width * .07,
        ),
      ),
    );
  }
}
