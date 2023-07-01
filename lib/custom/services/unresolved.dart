import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/constants.dart';

class CustomUnresolved extends StatelessWidget {
  const CustomUnresolved({
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
                        RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: appbarPrimaryTextColor,
                                    fontSize: 14),
                                children: [
                              TextSpan(
                                  text: 'Issue: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                              TextSpan(
                                  text: 'Chain Failure',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w400)),
                            ]))
                      ],
                    ),
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
                            Text(
                              'Hari',
                              style: secondaryTextStyle16,
                            ),
                            SizedBox(
                              height: height(size, 9),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/ongoing/pin.svg',
                                  color: primaryTextColor,
                                ),
                                SizedBox(
                                  width: width(size, 5),
                                ),
                                SizedBox(
                                  width: width(size, 252),
                                  child: Text(
                                    'Plot 30 NK Towers, Arunodaya Co-Operative C,Street number 6,Cyber Hills colony, VIP Hills, Jaihind Enclave, Hyderabad, Telangana 500081',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
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
                                text: 'Reason: ',
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            TextSpan(
                                text: 'Unexpected Emergency',
                                style: TextStyle(fontWeight: FontWeight.w400))
                          ]),
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
                      'Cancelled by You',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
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
