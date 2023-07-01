import 'dart:async';

import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomOngoingDialog extends StatelessWidget {
  CustomOngoingDialog({
    super.key,
    required this.text,
    required this.serviceid,
  });
  final String text, serviceid;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 150,
        padding: EdgeInsets.fromLTRB(20, 24, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: appbarPrimaryTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 11,
            ),
            RichText(
              softWrap: false,
              text: TextSpan(children: [
                TextSpan(
                    text: 'Service ID:',
                    style:
                        TextStyle(color: appbarPrimaryTextColor, fontSize: 14)),
                TextSpan(
                    text: serviceid,
                    style: TextStyle(
                        color: appbarPrimaryTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600))
              ]),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Okay',
                  style: TextStyle(
                      color: underlineColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
