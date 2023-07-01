import 'package:flutter/material.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/button.dart';
import 'package:s2ev_user/custom/secondary-appbar.dart';

class OtherServices extends StatelessWidget {
  const OtherServices({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomSecondaryAppbar(
              size: size, title: 'Other Service', position: true)
          .appbar(),
      backgroundColor: backgroundColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                style: TextStyle(fontSize: 12),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 17),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Please add your service',
                    enabled: true,
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            Spacer(),
            CustomButton(size: size, title: 'Submit')
          ],
        ),
      ),
    );
  }
}
