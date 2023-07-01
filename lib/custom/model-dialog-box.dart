import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constants.dart';

Future<dynamic> CustomModelAdded(BuildContext context, Size size) {
  return showDialog(
    barrierColor: Color.fromRGBO(72, 72, 72, 0.8),
    context: context,
    builder: (context) => Dialog(
      child: Container(
        height: height(size, 300),
        width: width(size, 400),
        child: Column(
          children: [
            SizedBox(
              height: height(size, 31),
            ),
            Image.asset(
              'assets/images/models/GHMModelF.png',
              width: width(size, 167),
              height: height(size, 100),
            ),
            SizedBox(
              height: height(size, 8),
            ),
            Text(
              'Model-L',
              style: TextStyle(
                  fontSize: 11,
                  color: primaryTextColor,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Gear Head Motors',
              style: TextStyle(
                  fontSize: 9,
                  color: appbarSecondaryTextColor,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height(size, 23),
            ),
            SvgPicture.asset('assets/images/verified.svg'),
            SizedBox(
              height: height(size, 15),
            ),
            Text(
              'Your Bike Has Been Added Successfully',
              style: TextStyle(
                  fontSize: 16,
                  color: primaryTextColor,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    ),
  );
}
