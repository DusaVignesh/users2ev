import 'package:flutter/material.dart';

const Color primaryColor = Color(0xff5943BE);
const Color underlineColor = Color(0xffFC683F);
const Color primaryTextColor = Color(0xff324367);
const Color secondaryTextColor = Color(0xff5848B9);
const Color backgroundColor = Color(0xffF8F8F8);
const Color backgroundMutedText = Color(0xff909FBF);
const Color boxShadowColor = Color(0xff909FBF);
const Color appbarBackgroundColor = Color(0xffE4EAF1);
const Color appbarPrimaryTextColor = Color(0xff19294F);
const Color appbarSecondaryTextColor = Color(0xff6A7C9B);
const Color dividerColor = Color(0xffE6E6E6);
const MaterialColor ternaryColor = MaterialColor(0xffE4EAF1, <int, Color>{
  100: Color(0xff909FBF),
});
double height(size, x) => (size.height * x) / 896.0;
double width(size, x) => (size.width * x) / 414.0;
const TextStyle primaryTextStyle18 = TextStyle(
    color: primaryTextColor, fontWeight: FontWeight.w500, fontSize: 18);
const TextStyle primaryTextStyle16 = TextStyle(
    color: primaryTextColor, fontWeight: FontWeight.w500, fontSize: 16);
const TextStyle primaryTextStyle14 = TextStyle(
    color: primaryTextColor, fontWeight: FontWeight.w400, fontSize: 14);
const TextStyle primaryTextStyle14w600 = TextStyle(
    color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 14);
const TextStyle secondaryTextStyle = TextStyle(
    color: appbarPrimaryTextColor, fontWeight: FontWeight.w500, fontSize: 18);
const TextStyle secondaryTextStyle16 = TextStyle(
    color: appbarPrimaryTextColor, fontWeight: FontWeight.w500, fontSize: 16);
const TextStyle secondaryTextStyle14 = TextStyle(
    color: appbarPrimaryTextColor, fontWeight: FontWeight.w600, fontSize: 14);
const TextStyle profileTextColor = TextStyle(
    color: appbarSecondaryTextColor, fontWeight: FontWeight.w500, fontSize: 16);
