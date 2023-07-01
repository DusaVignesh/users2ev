import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/controller/controller.dart';
import 'package:s2ev_user/custom/secondary-appbar.dart';
import 'package:s2ev_user/custom/user.dart';

import '../../custom/functions.dart';
import '../../custom/ongoing-dialog.dart';

class Ongoing extends StatefulWidget {
  const Ongoing({super.key});
  @override
  State<Ongoing> createState() => OngoingState();
}

class OngoingState extends State<Ongoing> with SingleTickerProviderStateMixin {
  Controller controller = Get.put(Controller());
  int index = 5, i = 1;
  late Timer timer;
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    if (index >= 1) {
      Future.delayed(
          Duration(seconds: 1), () => controller.stepProgress[0] = true);
      Future.delayed(Duration(seconds: 2), () {
        showDialog(
            context: context,
            builder: (context) {
              return CustomOngoingDialog(
                  text: 'Service Provider Hari has started from his location.',
                  serviceid: 'S2EV5141');
            }).then((value) {
          if (index != 1) {
            timer = Timer.periodic(const Duration(seconds: 2), (_) {
              if (--index <= 1) {
                timer.cancel();
                Future.delayed(
                    Duration(seconds: 2), () => Get.toNamed('/billPay'));
              }
              controller.cusHeight.value += 90;
              Future.delayed(Duration(seconds: 1),
                  () => controller.stepProgress[i++] = true);
            });
          }
        });
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomSecondaryAppbar(
              size: size,
              title: 'SERVICE ID: S2EV5141',
              appbarBackgroundColor: primaryColor,
              fontSize: 16,
              position: true,
              textColor: Colors.white,
              shadowColor: Colors.white,
              elevation: 1)
          .appbar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: height(size, 160),
              padding: EdgeInsets.symmetric(
                  vertical: height(size, 12), horizontal: 21),
              color: primaryColor,
              child: Column(
                children: [
                  CustomUser(size: size),
                  SizedBox(
                    height: height(size, 14),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: height(size, 65),
                    decoration: BoxDecoration(
                      color: Color(0xff7967CA),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ongoing/pin.svg',
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: width(size, 7),
                        ),
                        Expanded(
                          child: Text(
                            'Plot 30 NK Towers, Arunodaya Co-Operative C,Street number 6,Cyber Hills colony, VIP Hills, Jaihind Enclave, Hyderabad, Telangana 500081',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 26, horizontal: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Job Progress',
                          style: primaryTextStyle18,
                        ),
                        Text(
                          'Cancel job',
                          style: TextStyle(
                              color: underlineColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height(size, 25),
                    ),
                    Obx(
                      () => Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: width(size, 70),
                            height: height(size, height(size, 520)),
                            child: Stack(
                              children: [
                                for (int i = 0; i < 4; i++)
                                  Positioned(
                                    left: 30 / 2,
                                    top: 84 * i + 34,
                                    child: Container(
                                      color: Color(0xff909FBF),
                                      width: width(size, 6),
                                      height: height(size, 50),
                                    ),
                                  ),
                                Positioned(
                                  left: 30 / 2,
                                  child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      color: Color(0xff5943BE),
                                      width: width(size, 6),
                                      height: controller.cusHeight.value),
                                ),
                                for (int i = 0; i < 5; i++)
                                  Positioned(
                                    top: i * 84,
                                    child: AnimatedContainer(
                                      alignment: Alignment.center,
                                      height: height(size, 35),
                                      width: width(size, 35),
                                      duration: Duration(seconds: 1),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: controller.stepProgress[i] ==
                                                  false
                                              ? Color(0xff909FBF)
                                              : Color(0xff5943BE)),
                                      child: Text(
                                        '${i + 1}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Container(
                            width: width(size, 230),
                            height: height(size, 520),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: width(size, 200),
                                      child: Text(
                                        'Service Provider has accepted your request',
                                        style: TextStyle(
                                            color: appbarPrimaryTextColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        'assets/images/ongoing/shield-tick.svg')
                                  ],
                                ),
                                SizedBox(
                                  height: height(size, 52),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: width(size, 200),
                                      child: Text(
                                        'Service Provider has started the ride',
                                        style: TextStyle(
                                            color: appbarPrimaryTextColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        'assets/images/ongoing/shield-tick.svg')
                                  ],
                                ),
                                SizedBox(
                                  height: height(size, 52),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: width(size, 200),
                                      child: Text(
                                        'Service Provider has arrived to job Location',
                                        style: TextStyle(
                                            color: appbarPrimaryTextColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        'assets/images/ongoing/shield-tick.svg')
                                  ],
                                ),
                                SizedBox(
                                  height: height(size, 52),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: width(size, 200),
                                      child: Text(
                                        'Service Provider has Started the Job',
                                        style: TextStyle(
                                            color: appbarPrimaryTextColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        'assets/images/ongoing/shield-tick.svg')
                                  ],
                                ),
                                SizedBox(
                                  height: height(size, 52),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: width(size, 200),
                                      child: Text(
                                        'Service Provider has Completed his Job',
                                        style: TextStyle(
                                            color: appbarPrimaryTextColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        'assets/images/ongoing/shield-tick.svg')
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
