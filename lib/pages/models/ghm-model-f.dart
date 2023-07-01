import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/custom/secondary-appbar.dart';

import '../../constants/constants.dart';
import '../../custom/button.dart';
import '../../custom/model-dialog-box.dart';

class GHMModelF extends StatelessWidget {
  const GHMModelF({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var controller;
    return Scaffold(
      appBar:
          CustomSecondaryAppbar(size: size, title: 'Verify Your Bike').appbar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height(size, 5),
            ),
            Text(
              'Select Model',
              style: primaryTextStyle18,
            ),
            SizedBox(
              height: height(size, 10),
            ),
            TextFormField(
              style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              initialValue: 'GHM Model-F',
              readOnly: true,
              decoration: InputDecoration(
                  labelStyle: primaryTextStyle18,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: width(size, 24), vertical: height(size, 14)),
                  hintStyle: TextStyle(
                      color: appbarSecondaryTextColor,
                      fontWeight: FontWeight.w300),
                  hintText: 'Search by E-Cycle Model or Brand',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: appbarSecondaryTextColor,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            Column(
              children: [
                SizedBox(
                  height: height(size, 43),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/models/GHMModelF.png'),
                ),
                SizedBox(
                  height: height(size, 43),
                ),
                Text(
                  'Model-F',
                  style: primaryTextStyle18,
                ),
                Text(
                  'Gear Head Motors',
                  style: TextStyle(
                      color: appbarSecondaryTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: height(size, 45),
            ),
            Text(
              'Date of Purchase',
              style: primaryTextStyle18,
            ),
            SizedBox(
              height: height(size, 10),
            ),
            TextFormField(
              style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
              initialValue: '23-02-2019',
              readOnly: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: width(size, 24), vertical: height(size, 14)),
                hintStyle: TextStyle(
                    color: appbarSecondaryTextColor,
                    fontWeight: FontWeight.w300),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: appbarSecondaryTextColor,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(
              height: height(size, 24),
            ),
            Text(
              'Purchase Proof',
              style: primaryTextStyle18,
            ),
            SizedBox(
              height: height(size, 10),
            ),
            Container(
              height: height(size, 46),
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upload Invoice',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  SvgPicture.asset('assets/images/scanner.svg',
                      height: height(size, 26), width: width(size, 26)),
                ],
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                CustomModelAdded(context, size);
                Future.delayed(
                    Duration(seconds: 2), () => Get.toNamed('/payment'));
              },
              child: CustomButton(size: size, title: "Next"),
            ),
          ],
        ),
      ),
    );
  }
}
