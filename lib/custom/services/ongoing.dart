import 'package:flutter/material.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/address-bar.dart';
import 'package:s2ev_user/custom/button.dart';
import 'package:s2ev_user/custom/user.dart';

class CustomOngoing extends StatelessWidget {
  const CustomOngoing({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: height(size, 20),
      ),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: appbarBackgroundColor),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Service ID:',
                                style: TextStyle(
                                    color: appbarPrimaryTextColor,
                                    fontSize: 14)),
                            TextSpan(
                                text: ' S2EV5141',
                                style: TextStyle(
                                    color: appbarPrimaryTextColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600)),
                          ]),
                        ),
                        CustomButton(
                          size: size,
                          title: 'Cancel Job',
                          buttonWidth: width(size, 118),
                          fontSize: 14,
                          horizontalPadding: 20,
                          fontWeight: FontWeight.w500,
                          boxHeight: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height(size, 10),
                    ),
                    CustomUser(
                      size: size,
                      textfontSize: 16,
                      textColor: appbarPrimaryTextColor,
                    ),
                    SizedBox(
                      height: height(size, 14),
                    ),
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: appbarPrimaryTextColor, fontSize: 16),
                          children: [
                            TextSpan(
                                text: 'Issue: ',
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            TextSpan(text: 'Chain Failure')
                          ]),
                    ),
                    SizedBox(
                      height: height(size, 11),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: CustomAddressBar(
                        size: size,
                        iconColor: appbarPrimaryTextColor,
                        textColor: appbarSecondaryTextColor,
                      ),
                    ),
                    SizedBox(
                      height: height(size, 10),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(14),
                height: height(size, 43),
                decoration: BoxDecoration(
                  color: primaryTextColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '26 May,2023 (11.30AM)',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Text(
                            'Job Progress',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(
                            width: width(size, 3),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_rounded,
                            size: 16,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
