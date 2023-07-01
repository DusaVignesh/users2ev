import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/custom/button.dart';
import 'package:s2ev_user/data/services.dart';

import '../constants/constants.dart';
import '../custom/addition-service.dart';
import '../custom/navigationbar.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: backgroundColor),
            child: ListView(
              shrinkWrap: true,
              children: [
                Material(
                  elevation: 1,
                  shadowColor: boxShadowColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    'assets/images/batterycare/locationpin.svg'),
                                SizedBox(
                                  width: width(size, 6),
                                ),
                                Text(
                                  'Madhapur',
                                  style: secondaryTextStyle,
                                )
                              ],
                            ),
                            Text(
                              'Plot 30 NK Towers, Aurnodaya,',
                              style: TextStyle(
                                  color: primaryTextColor, fontSize: 14),
                            )
                          ],
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          width: width(size, 70),
                          height: height(size, 58),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/models/GHMModelF.png',
                                width: width(size, 60),
                                height: height(size, 40),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  color: Color(0xff2F2F2F),
                                  child: Text(
                                    'Model -F',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height(size, 18), horizontal: width(size, 26)),
                  child: Row(
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
                        '(Town)',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: backgroundMutedText),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: dividerColor,
                  thickness: 2,
                ),
                Container(
                  height: 600,
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
                      ),
                      SizedBox(
                        height: height(size, 18),
                      ),
                      SizedBox(
                        height: height(size, 80),
                        child: ListView(
                          clipBehavior: Clip.none,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Image.asset(
                                  'assets/images/models/model1.png',
                                  height: height(size, 78),
                                  width: width(size, 130),
                                ),
                                Positioned(
                                  right: -10,
                                  top: -10,
                                  child: Material(
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(100),
                                    child: SvgPicture.asset(
                                        'assets/images/close.svg'),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: width(size, 30),
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Image.asset(
                                  'assets/images/models/model2.png',
                                  height: height(size, 78),
                                  width: width(size, 130),
                                ),
                                Positioned(
                                  top: 25,
                                  left: 50,
                                  child: Material(
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(100),
                                    child: SvgPicture.asset(
                                        'assets/images/video-play.svg'),
                                  ),
                                ),
                                Positioned(
                                  right: -10,
                                  top: -10,
                                  child: Material(
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(100),
                                    child: SvgPicture.asset(
                                        'assets/images/close.svg'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height(size, 48),
                      ),
                      Text(
                        'Additional services might cost extra',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: primaryTextColor),
                      ),
                      SizedBox(
                        height: height(size, 17),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        height: height(size, 150),
                        child: GridView.count(
                          mainAxisSpacing: 1.5,
                          crossAxisSpacing: 1.5,
                          crossAxisCount: 2,
                          childAspectRatio: 185.5 / 68,
                          children: [
                            for (int i = 0; i < additionlServices.length; i++)
                              CustomAdditionService(
                                color: additionlServices[i]['color'],
                                fontWeight: additionlServices[i]['weight'],
                                fontSize: additionlServices[i]['size'],
                                title: additionlServices[i]['title'],
                                subtitle: additionlServices[i]['subtitle'],
                                size: size,
                              ),
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () => Get.toNamed('/bookedSuccesful'),
                        child: CustomButton(
                            size: size, title: 'Make Payment   ₹ 99'),
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
