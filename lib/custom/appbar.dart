import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

class CustomAppBar {
  const CustomAppBar({
    required this.size,
  });
  final Size size;
  AppBar appbar() {
    return AppBar(
      leadingWidth: size.width * 0.17,
      shadowColor: boxShadowColor,
      toolbarHeight: 78,
      backgroundColor: appbarBackgroundColor,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tej',
            style: TextStyle(color: appbarPrimaryTextColor, fontSize: 16),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'tej@gmail.com',
            style: TextStyle(color: appbarSecondaryTextColor, fontSize: 12),
          ),
        ],
      ),
      leading: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 14),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Color(0xffD6D6D6),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              'assets/images/account.png',
              width: 55,
              height: 55,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Get.toNamed('/addCycle');
          },
          child: Container(
            width: 127,
            height: 44,
            margin: EdgeInsets.only(right: 18),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xffB1BAC9)),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add Cycle',
                  style: TextStyle(
                      color: appbarPrimaryTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.add,
                  color: appbarPrimaryTextColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
