import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/controller/controller.dart';
import 'package:s2ev_user/custom/appbar.dart';
import 'package:s2ev_user/data/services.dart';

import '../custom/functions.dart';
import '../custom/gridview.dart';
import '../custom/navigationbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  Controller controller = Get.put(Controller());

  @override
  Widget build(context) {
    if (controller.serviceAcceptedStatus == true)
      Future.delayed(Duration.zero, () => showAlert(context));
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(size: size).appbar(),
      backgroundColor: backgroundColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: height(size, 13),
            ),
            Container(
              width: width(size, 379),
              height: height(size, 116),
              child: Card(
                color: appbarBackgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width(size, 210),
                      padding: const EdgeInsets.fromLTRB(17, 14, 0, 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bring back your beast 2'.toUpperCase(),
                            style: TextStyle(
                                color: primaryTextColor,
                                height: 1.3,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            'Life!'.toUpperCase(),
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                shadows: [Shadow(offset: Offset(0, -5))],
                                color: Colors.transparent,
                                decorationColor: underlineColor,
                                decorationThickness: height(size, 3),
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.5),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/modele2.png',
                      // color: Colors.transparent,
                      width: width(size, 151),
                      height: height(size, 117),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height(size, 13),
            ),
            Container(
              padding: EdgeInsets.only(bottom: height(size, 12)),
              decoration: BoxDecoration(color: Colors.white),
              height: height(size, 450),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 17),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/emergency.svg',
                          width: width(size, 24),
                          height: height(size, 24),
                        ),
                        SizedBox(
                          width: width(size, 10),
                        ),
                        Text(
                          'Choose your Emergency Service',
                          style: TextStyle(
                              fontSize: 18,
                              color: primaryTextColor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: backgroundColor,
                  ),
                  CustomGridView(size: size),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 32),
                    width: width(size, 379),
                    height: height(size, 111),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: DefaultTextStyle(
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < info.length; i++)
                            Row(children: [
                              SvgPicture.asset(
                                'assets/images/list.svg',
                              ),
                              SizedBox(
                                width: width(size, 8),
                              ),
                              Text(info[i])
                            ]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height(size, 100),
              width: width(size, 379),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xffE4EAF1),
              ),
              child: Column(
                children: [
                  Container(
                    height: height(size, 40),
                    decoration: BoxDecoration(
                        color: Color(0xffFC683F),
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/email_certified.svg'),
                        SizedBox(
                          width: width(size, 7),
                        ),
                        Text(
                          'Certified skilled Mechanics',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'brands we use'.toUpperCase(),
                          style: TextStyle(
                              color: Color(0xff324367),
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '|',
                          style:
                              TextStyle(fontSize: 28, color: Color(0xff324367)),
                        ),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset('assets/images/logo.svg'),
                                SvgPicture.asset('assets/images/ghm.svg')
                              ],
                            ),
                            SizedBox(
                              width: width(size, 5),
                            ),
                            Text(
                              'Gear Head Motors',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
