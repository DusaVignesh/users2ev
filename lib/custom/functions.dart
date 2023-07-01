import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/custom/button.dart';

import '../constants/constants.dart';

void showAlert(BuildContext context) {
  final size = MediaQuery.of(context).size;
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: height(size, 405),
            child: Column(
              children: [
                SizedBox(
                  height: height(size, 20),
                ),
                SvgPicture.asset(
                  'assets/images/done.svg',
                  width: width(size, 107),
                  height: height(size, 107),
                ),
                Text(
                  'Service Accepted',
                  style: primaryTextStyle18,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 28),
                  child: Text(
                    'Service Provider Hari has accepted your request. He will come by 6/13/2023 in between 9:00AM -11:00AM.You can check the status by tapping below button.',
                    style: TextStyle(color: Color(0xff646464), fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: height(size, 16),
                ),
                InkWell(
                  onTap: () => Get.toNamed('/ongoingJobs'),
                  child: CustomButton(
                    size: size,
                    title: 'View Ongoing Job',
                    buttonWidth: width(size, 300),
                  ),
                ),
                SizedBox(
                  height: height(size, 13),
                ),
                CustomButton(
                    textColor: underlineColor,
                    size: size,
                    title: 'Cancel Job',
                    buttonWidth: width(size, 300),
                    backgroundColor: Colors.white),
              ],
            ),
          ),
        );
      });
}
