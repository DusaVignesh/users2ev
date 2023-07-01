import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../controller/controller.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: height(size, 35), horizontal: width(size, 24)),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'How was your service?',
                    style: primaryTextStyle18,
                  ),
                  SizedBox(
                    height: height(size, 22),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: height(size, 19),
                        horizontal: width(size, 16)),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffE4EAF1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RatingBar.builder(
                            initialRating: 0,
                            itemCount: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Icon(
                                Icons.star_outline_rounded,
                              );
                            },
                            onRatingUpdate: (rating) {}),
                        Text(
                          'Save as favourite Service Provider?',
                          style: TextStyle(
                              color: primaryTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: height(size, 15),
                        ),
                        Obx(
                          () => CupertinoSwitch(
                            trackColor: primaryTextColor,
                            activeColor: primaryTextColor,
                            value: controller.switchStatus.value,
                            onChanged: (value) {
                              controller.switchStatus.value =
                                  !controller.switchStatus.value;
                            },
                          ),
                        ),
                        SizedBox(
                          height: height(size, 12),
                        ),
                        Text(
                          'Add a review?',
                          style: TextStyle(
                              color: primaryTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: height(size, 15),
                        ),
                        TextField(
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 15),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF8F8F8)),
                              ),
                              enabled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              fillColor: Colors.white,
                              hintText: 'write a review',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () => Get.toNamed('/home'),
                child: CustomButton(size: size, title: 'Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
