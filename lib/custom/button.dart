import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.borderColor = underlineColor,
      required this.size,
      this.boxHeight = 55,
      required this.title,
      this.backgroundColor = underlineColor,
      this.textColor = Colors.white,
      this.fontSize = 16,
      this.horizontalPadding = 24,
      this.fontWeight = FontWeight.w700,
      this.buttonWidth = double.infinity});
  final String title;
  final Size size;
  final double buttonWidth, fontSize, horizontalPadding, boxHeight;
  final Color backgroundColor, textColor, borderColor;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(size, boxHeight),
      width: buttonWidth,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: borderColor),
          color: backgroundColor),
      child: Text(
        title,
        style: TextStyle(
            color: textColor, fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
