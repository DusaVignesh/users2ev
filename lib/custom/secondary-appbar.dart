import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

class CustomSecondaryAppbar {
  const CustomSecondaryAppbar(
      {required this.size,
      this.shadowColor = const Color.fromRGBO(0, 0, 0, 0.25),
      required this.title,
      this.position = false,
      this.appbarBackgroundColor = backgroundColor,
      this.textColor = primaryTextColor,
      this.fontSize = 18,
      this.elevation = 2});
  final bool position;
  final Color appbarBackgroundColor, textColor, shadowColor;
  final Size size;
  final String title;
  final double fontSize, elevation;
  AppBar appbar() {
    return AppBar(
      shadowColor: shadowColor,
      elevation: elevation,
      backgroundColor: appbarBackgroundColor,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back_ios_new_rounded),
        iconSize: height(size, 18),
        color: textColor,
      ),
      centerTitle: position,
      title: Text(
        title,
        style: TextStyle(
            color: textColor, fontWeight: FontWeight.w500, fontSize: fontSize),
        textAlign: TextAlign.center,
      ),
    );
  }
}
