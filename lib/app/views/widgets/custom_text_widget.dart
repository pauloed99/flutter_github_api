import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final TextAlign? textAlign;
  final Color? color;
  final FontWeight? fontWeight;

  const CustomTextWidget({
    Key? key,
    required this.text,
    this.fontSize,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
