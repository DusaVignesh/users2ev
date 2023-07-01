import 'dart:math';

import 'package:flutter/material.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/appbar.dart';
import 'package:s2ev_user/custom/button.dart';
import 'package:s2ev_user/custom/secondary-appbar.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomSecondaryAppbar(
              size: size, title: 'Edit Profile', position: true)
          .appbar(),
      backgroundColor: backgroundColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: height(size, 11),
            ),
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
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 34),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'first name'.toUpperCase(),
                        style: secondaryTextStyle14,
                      ),
                      SizedBox(
                        height: height(size, 10),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurStyle: BlurStyle.outer,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 17),
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabled: true,
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                      SizedBox(
                        height: height(size, 21),
                      ),
                      Text(
                        'last name'.toUpperCase(),
                        style: secondaryTextStyle14,
                      ),
                      SizedBox(
                        height: height(size, 10),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurStyle: BlurStyle.outer,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 17),
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabled: true,
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                      SizedBox(
                        height: height(size, 21),
                      ),
                      Text(
                        'email address'.toUpperCase(),
                        style: secondaryTextStyle14,
                      ),
                      SizedBox(
                        height: height(size, 10),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurStyle: BlurStyle.outer,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 17),
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabled: true,
                              hintText: 'hari@gmail.com',
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                      SizedBox(
                        height: height(size, 21),
                      ),
                      Text(
                        'mobile'.toUpperCase(),
                        style: secondaryTextStyle14,
                      ),
                      SizedBox(
                        height: height(size, 10),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurStyle: BlurStyle.outer,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: Material(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 17),
                                child: Text(
                                  '+91',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('|',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 28)),
                              Flexible(
                                child: TextField(
                                  style: TextStyle(fontSize: 14),
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 17),
                                      border: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      enabled: true,
                                      hintText: '9876543210',
                                      fillColor: Colors.white,
                                      filled: true),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height(size, 21),
                      ),
                      Text(
                        'Address'.toUpperCase(),
                        style: secondaryTextStyle14,
                      ),
                      SizedBox(
                        height: height(size, 10),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurStyle: BlurStyle.outer,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 17),
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabled: true,
                              hintText:
                                  'Plot 30 NK Towers, Arunodaya Co-Operative C,Street number 6,Cyber Hills colony, VIP Hills, Jaihind Enclave, Hyderabad, Telangana 500081',
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                      SizedBox(
                        height: height(size, 75),
                      ),
                      CustomButton(size: size, title: 'Save')
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
