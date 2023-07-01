import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/navigationbar.dart';

class BatteryCare extends StatelessWidget {
  const BatteryCare({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            // height: height(size, 320),
            decoration: BoxDecoration(color: Colors.white),
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height(size, 24), horizontal: width(size, 28)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform.translate(
                            offset: Offset(0, 5),
                            child: SvgPicture.asset(
                                'assets/images/batterycare/batterycare.svg'),
                          ),
                          SizedBox(
                            width: width(size, 8),
                          ),
                          Text(
                            'Battery Care',
                            style: primaryTextStyle18,
                          ),
                          Spacer(),
                          Text(
                            '(City)',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: backgroundMutedText),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height(size, 12),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                              'assets/images/batterycare/locationpin.svg'),
                          SizedBox(
                            width: width(size, 10),
                          ),
                          Text(
                            'Plot 30 NK Towers, Aurnodaya,',
                            style: TextStyle(
                                color: primaryTextColor, fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: backgroundColor,
                  thickness: 3,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height(size, 14), horizontal: width(size, 28)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upload Pictures or Videos (Optional)',
                        style: primaryTextStyle18,
                      ),
                      SizedBox(
                        height: height(size, 16),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                              'assets/images/batterycare/videocall.svg'),
                          SizedBox(
                            width: width(size, 23),
                          ),
                          SvgPicture.asset(
                              'assets/images/batterycare/multiimages.svg'),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 3,
                  color: backgroundColor,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width(size, 28), vertical: height(size, 10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Booking Fee - ₹99',
                        style: primaryTextStyle18,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: underlineColor,
                            padding: EdgeInsets.symmetric(
                                vertical: height(size, 12),
                                horizontal: width(size, 45))),
                        onPressed: () {
                          Get.toNamed('/addCycle');
                        },
                        child: Text(
                          'Book',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
