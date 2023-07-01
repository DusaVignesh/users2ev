import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/button.dart';

import '../controller/controller.dart';

class BookedSuccessful extends StatelessWidget {
  const BookedSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Controller controller = Get.find();
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 23, horizontal: 22),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 450,
                child: Stack(
                  children: [
                    Positioned(
                      top: height(size, 144),
                      child: Image.asset('assets/images/booked/layer1.png'),
                    ),
                    Positioned(
                      top: height(size, 93),
                      left: width(size, 88),
                      child: Image.asset('assets/images/booked/layer2.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height(size, 71),
              ),
              Text(
                'THANK YOU TEJ FOR BOOKING!',
                style: TextStyle(
                    color: secondaryTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: height(size, 12),
              ),
              SizedBox(
                width: width(size, 307),
                child: Text(
                  'Please relax and sit back our technician will contact you shortly',
                  style: TextStyle(
                      color: Color(0xff646464),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  controller.serviceAcceptedStatus.value = true;
                  Get.toNamed('/home');
                },
                child: CustomButton(size: size, title: 'Okay'),
              )
            ],
          ),
        ));
  }
}
