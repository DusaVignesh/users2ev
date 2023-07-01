import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/button.dart';
import 'package:s2ev_user/custom/navigationbar.dart';
import 'package:s2ev_user/data/services.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        backgroundColor: backgroundColor,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: height(size, 248),
                width: width(size, 414),
                color: Color(0xffE4EAF1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: InkWell(
                        onTap: () {
                          Get.toNamed('/profile/edit');
                        },
                        child: Stack(
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: Color(0xffD6D6D6),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/accountlg.png',
                                width: width(size, 122),
                                height: height(size, 122),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: height(size, 24),
                                width: width(size, 24),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white),
                                child:
                                    SvgPicture.asset('assets/images/edit.svg'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height(size, 10),
                    ),
                    Text(
                      'Tej',
                      style: secondaryTextStyle16,
                    ),
                    SizedBox(
                      height: height(size, 6),
                    ),
                    Text(
                      'hari@gmail.com',
                      style: TextStyle(
                          color: appbarSecondaryTextColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: height(size, 6),
                    ),
                    Text(
                      '+919876543210',
                      style: primaryTextStyle14,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 23,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 27),
                      child: Text(
                        'General ',
                        style: primaryTextStyle18,
                      ),
                    ),
                    SizedBox(
                      height: height(size, 9),
                    ),
                    SizedBox(
                      height: height(size, 206),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: profile['general']!.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () => Future.delayed(
                                  Duration(milliseconds: 180),
                                  () => Get.toNamed(
                                      profile['general']![index]['route'])),
                              splashColor: primaryTextColor,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 9, horizontal: 27),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      profile['general']![index]['title'],
                                      style: profileTextColor,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color: appbarSecondaryTextColor,
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffE4EAF1),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 23,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 27),
                      child: Text(
                        'Support ',
                        style: primaryTextStyle18,
                      ),
                    ),
                    SizedBox(
                      height: height(size, 9),
                    ),
                    SizedBox(
                      height: height(size, 112),
                      child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 9, horizontal: 27),
                              child: InkWell(
                                onTap: () =>
                                    profile["support"]![index]['route'],
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      profile["support"]![index]['title'],
                                      style: profileTextColor,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color: appbarSecondaryTextColor,
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: profile['support']!.length),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffE4EAF1),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CustomLogout(size: size);
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                        color: Color(0xffED4B72),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLogout extends StatelessWidget {
  const CustomLogout({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
          height: height(size, 139),
          width: width(size, 388),
          child: Column(
            children: [
              Text(
                'Are you sure you want to logout?',
                style: primaryTextStyle16,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    boxHeight: height(size, 48),
                    size: size,
                    title: 'Yes',
                    buttonWidth: 130,
                  ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: CustomButton(
                      borderColor: Color(0xff909FBF),
                      backgroundColor: Color(0xff909FBF),
                      boxHeight: height(size, 48),
                      size: size,
                      title: 'No',
                      buttonWidth: 130,
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
