import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constants.dart';

class CustomAddressBar extends StatelessWidget {
  const CustomAddressBar(
      {super.key,
      required this.size,
      this.iconColor = Colors.white,
      this.textColor = Colors.white});
  final Color iconColor, textColor;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          'assets/images/ongoing/pin.svg',
          color: iconColor,
        ),
        SizedBox(
          width: width(size, 7),
        ),
        Expanded(
          child: Text(
            'Plot 30 NK Towers, Arunodaya Co-Operative C,Street number 6,Cyber Hills colony, VIP Hills, Jaihind Enclave, Hyderabad, Telangana 500081',
            style: TextStyle(
                color: textColor, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
