import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constants.dart';

class CustomService extends StatelessWidget {
  const CustomService(
      {super.key,
      required this.size,
      this.boxWidth = 52,
      required this.title,
      required this.svglocation});
  final double boxWidth;
  final Size size;
  final title, svglocation;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          svglocation,
          width: width(size, 54),
          height: height(size, 54),
        ),
        SizedBox(
          height: height(size, 5),
        ),
        SizedBox(
          width: boxWidth,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
