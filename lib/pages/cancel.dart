import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/button.dart';
import 'package:s2ev_user/data/services.dart';

import '../controller/controller.dart';

class CancelJob extends StatelessWidget {
  const CancelJob({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE1E1E1),
        body: Stack(children: [
          Center(
            child: Reasons(),
          ),
        ]),
      ),
    );
  }
}

class Reasons extends StatefulWidget {
  const Reasons({super.key});
  @override
  State<Reasons> createState() => ReasonsState();
}

class ReasonsState extends State<Reasons> {
  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      width: width(size, 382),
      height: height(size, 320),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: backgroundColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: width(size, 12),
              ),
              Text(
                'Select a reason to cancel a job',
                style: TextStyle(
                    color: appbarPrimaryTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            width: width(size, 362),
            child: ListView.builder(
              itemCount: cancelReasons.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Obx(() {
                  dynamic reason = controller.cancelReason.value;
                  return Container(
                    height: 35,
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 0,
                      title: Expanded(
                          child: Text(
                        cancelReasons[index],
                        style: TextStyle(
                            fontSize: 16,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w400),
                      )),
                      leading: Radio(
                          fillColor: MaterialStateProperty.all(Colors.black),
                          value: cancelReasons[index],
                          groupValue: reason,
                          onChanged: (value) {
                            controller.cancelReason.value =
                                cancelReasons[index];
                          }),
                    ),
                  );
                });
              },
            ),
          ),
          SizedBox(
            height: height(size, 25),
          ),
          CustomButton(size: size, title: 'Submit')
        ],
      ),
    );
  }
}
