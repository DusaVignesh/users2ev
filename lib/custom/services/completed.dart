import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../data/services.dart';
import '../address-bar.dart';

class CustomCompleted extends StatelessWidget {
  const CustomCompleted({
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
      itemCount: 3,
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
                    SizedBox(
                      height: height(size, 10),
                    ),
                    Row(
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
                          width: width(size, 10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hari |',
                                  style: TextStyle(
                                      color: appbarPrimaryTextColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text('+919876543210',
                                    style: TextStyle(
                                        color: appbarPrimaryTextColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            SizedBox(
                              height: height(size, 7),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: appbarPrimaryTextColor),
                                children: [
                                  TextSpan(
                                      text: 'Service ID: ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: 'S2EV5141',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                                height: 50,
                                child: Text(
                                  'Completed',
                                  style: TextStyle(
                                      color: Color(0xff8598AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )))
                      ],
                    ),
                    SizedBox(
                      height: height(size, 20),
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
                      height: height(size, 15),
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
                      height: height(size, 15),
                    ),
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Color(0xffD6DFE9),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: height(size, 70),
                            padding: EdgeInsets.symmetric(
                                vertical: 14, horizontal: 16),
                            child: ListView.separated(
                              separatorBuilder: (context, index) => SizedBox(
                                height: height(size, 6),
                              ),
                              itemCount: completedFee.length,
                              itemBuilder: (context, index) {
                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${completedFee[index]['fee']}: ',
                                      style: primaryTextStyle14,
                                    ),
                                    SizedBox(
                                        width: width(size, 45),
                                        child: Text(
                                          '₹ ${completedFee[index]['amount']}',
                                          style: primaryTextStyle14w600,
                                        ))
                                  ],
                                );
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 14),
                            color: underlineColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Money Paid:',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: width(size, 45),
                                  child: Text(
                                    '₹ 420',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
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
                    Text(
                      'Paid',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
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
