import 'package:flutter/material.dart';
import 'package:s2ev_user/constants/constants.dart';

class CustomAdditionService extends StatelessWidget {
  const CustomAdditionService(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.color,
      required this.fontSize,
      required this.fontWeight,
      required this.size});
  final Size size;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE4EAF1),
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Color(0xff868686), fontSize: 14),
          ),
          SizedBox(
            height: height(size, 3),
          ),
          Text(
            subtitle,
            style: TextStyle(
                color: color, fontSize: fontSize, fontWeight: fontWeight),
          ),
        ],
      ),
    );
  }
}
