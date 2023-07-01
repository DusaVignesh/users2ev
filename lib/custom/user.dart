import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constants.dart';

class CustomUser extends StatelessWidget {
  const CustomUser({
    super.key,
    this.textColor = backgroundColor,
    this.textfontSize = 24,
    required this.size,
  });
  final double textfontSize;
  final Color textColor;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
        SizedBox(
          width: width(size, 20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hari',
              style: TextStyle(
                  color: textColor,
                  fontSize: textfontSize,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height(size, 9),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/ongoing/call.svg',
                  color: textColor,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '+919876543210',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
        Spacer(),
        Container(
          width: width(size, 42),
          height: height(size, 42),
          margin: EdgeInsets.only(left: 14),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child: SvgPicture.asset(
            'assets/images/ongoing/phonecall.svg',
            width: width(size, 26),
            height: height(size, 26),
            fit: BoxFit.scaleDown,
          ),
        ),
        Container(
          width: width(size, 42),
          height: height(size, 42),
          margin: EdgeInsets.only(left: 14),
          decoration: BoxDecoration(
            color: appbarPrimaryTextColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: SvgPicture.asset(
            'assets/images/ongoing/chat.svg',
            fit: BoxFit.scaleDown,
            width: width(size, 26),
            height: height(size, 26),
          ),
        ),
      ],
    );
  }
}
