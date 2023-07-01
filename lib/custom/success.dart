import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/button.dart';

class ServiceSuccess extends StatelessWidget {
  const ServiceSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundColor,
          body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                vertical: height(size, 35), horizontal: width(size, 24)),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/success.svg'),
                      SizedBox(
                        height: height(size, 18),
                      ),
                      Text(
                        'Your Service was completed successfully.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: primaryTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: height(size, 18),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: height(size, 12),
                            horizontal: width(size, 12)),
                        width: width(size, 360),
                        // height: height(size, 140),
                        decoration: BoxDecoration(
                          color: Color(0xffD6DFE9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Service Fee:',
                                  style: TextStyle(
                                      color: primaryTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                Text(
                                  '₹ 496',
                                  style: TextStyle(
                                      color: primaryTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height(size, 8),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tax Invoice:',
                                  style: TextStyle(
                                      color: primaryTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                Text(
                                  '₹ 30',
                                  style: TextStyle(
                                      color: primaryTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height(size, 12),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xffA7B3C6),
                            ),
                            SizedBox(
                              height: height(size, 8),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Money Paid:',
                                  style: TextStyle(
                                      color: primaryTextColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Text(
                                  '₹ 526',
                                  style: TextStyle(
                                      color: primaryTextColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(size: size, title: 'Okay'),
                )
              ],
            ),
          )),
    );
  }
}
