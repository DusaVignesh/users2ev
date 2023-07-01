import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/button.dart';
import 'package:s2ev_user/custom/secondary-appbar.dart';
import 'package:s2ev_user/data/services.dart';

import '../../controller/controller.dart';

class BillPay extends StatelessWidget {
  const BillPay({super.key});

  @override
  Widget build(BuildContext context) {
    String value1;
    Controller controller = Get.put(Controller());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomSecondaryAppbar(
              size: size, title: 'Payment Methods', position: true)
          .appbar(),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: width(size, 27), vertical: height(size, 29)),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  '₹526',
                  style: TextStyle(
                      fontSize: 48,
                      color: primaryTextColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: height(size, 35),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bank accounts',
                    style: primaryTextStyle16,
                  ),
                  Icon(Icons.add)
                ],
              ),
              SizedBox(
                height: height(size, 19),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: underlineColor),
                    borderRadius: BorderRadius.circular(4)),
                height: height(size, 70),
                width: width(size, 360),
                child: Image.asset(
                  'assets/images/BillingCard.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: height(size, 19),
              ),
              Text(
                'Saved Cards',
                style: primaryTextStyle16,
              ),
              SizedBox(
                height: height(size, 15),
              ),
              SizedBox(
                height: height(size, 70),
                width: width(size, 360),
                child: Image.asset(
                  'assets/images/BillingCard.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: height(size, 19),
              ),
              SizedBox(
                height: height(size, 70),
                width: width(size, 360),
                child: Image.asset(
                  'assets/images/BillingCard.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: height(size, 33),
              ),
              Text(
                'UPI',
                style: primaryTextStyle16,
              ),
              SizedBox(
                height: height(size, 14),
              ),
              Obx(
                () => Column(
                  children: [
                    Container(
                      height: height(size, 36),
                      padding: EdgeInsets.only(right: 17),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE2E2E2)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                            value: paymentMode[0],
                            groupValue: controller.paymentMode.value,
                            onChanged: (val) {
                              controller.paymentMode.value = paymentMode[0];
                            },
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/payments/gpay.png'),
                              SizedBox(
                                width: width(size, 8),
                              ),
                              Text('Google Pay')
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height(size, 14),
                    ),
                    Container(
                      height: height(size, 36),
                      padding: EdgeInsets.only(right: 17),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE2E2E2)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                            value: paymentMode[1],
                            groupValue: controller.paymentMode.value,
                            onChanged: (val) {
                              controller.paymentMode.value = paymentMode[1];
                            },
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/payments/phonepe.png'),
                              SizedBox(
                                width: width(size, 8),
                              ),
                              Text('PhonePe')
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height(size, 14),
                    ),
                    Container(
                      height: height(size, 36),
                      padding: EdgeInsets.only(right: 17),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE2E2E2)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                            value: paymentMode[2],
                            groupValue: controller.paymentMode.value,
                            onChanged: (val) {
                              controller.paymentMode.value = paymentMode[2];
                            },
                          ),
                          SvgPicture.asset(
                              'assets/images/payments/razorpay.svg')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height(size, 40),
              ),
              InkWell(
                onTap: () => showModalBottomSheet(
                    enableDrag: true,
                    isDismissible: false,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 21, horizontal: 27),
                        height: height(size, 458),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Add New Card',
                                  style: TextStyle(
                                      color: primaryTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                InkWell(
                                  onTap: () => Navigator.pop(context),
                                  child: SvgPicture.asset(
                                    'assets/images/close-circle.svg',
                                    color: primaryTextColor,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height(size, 20),
                            ),
                            Text(
                              'Card Number',
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
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    hintText: 'Enter 12 digit card number',
                                    enabled: true,
                                    fillColor: Colors.white,
                                    filled: true),
                              ),
                            ),
                            SizedBox(
                              height: height(size, 20),
                            ),
                            Row(
                              children: [
                                Container(
                                    height: height(size, 48),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 17, vertical: 4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.white,
                                        border: Border.all(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.25))),
                                    child: Obx(
                                      () => DropdownButton(
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54),
                                          underline: SizedBox(),
                                          dropdownColor: Colors.white,
                                          focusColor: Colors.white,
                                          icon: Icon(Icons
                                              .keyboard_arrow_down_rounded),
                                          value: controller.month.value,
                                          items: months
                                              .map((month) => DropdownMenuItem(
                                                    child: Text(month),
                                                    value: month,
                                                  ))
                                              .toList(),
                                          onChanged: (val) {
                                            controller.month.value = val!;
                                          }),
                                    )),
                                SizedBox(
                                  width: width(size, 17),
                                ),
                                Container(
                                  height: height(size, 48),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 17, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.white,
                                      border: Border.all(
                                          color:
                                              Color.fromRGBO(0, 0, 0, 0.25))),
                                  child: Obx(
                                    () => DropdownButton(
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54),
                                        underline: SizedBox(),
                                        dropdownColor: Colors.white,
                                        focusColor: Colors.white,
                                        icon: Icon(
                                            Icons.keyboard_arrow_down_rounded),
                                        value: controller.year.value,
                                        items: years
                                            .map((year) => DropdownMenuItem(
                                                  child: Text(year),
                                                  value: year,
                                                ))
                                            .toList(),
                                        onChanged: (val) {
                                          controller.year.value = val!;
                                        }),
                                  ),
                                ),
                                Spacer(),
                                Obx(
                                  () => Container(
                                    width: width(size, 100),
                                    height: height(size, 48),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 17, vertical: 4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.white,
                                        border: Border.all(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.25))),
                                    child: TextField(
                                      obscureText: controller.cvvPassword.value,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'cvv',
                                          suffixIconConstraints: BoxConstraints(
                                              minHeight: height(size, 20),
                                              minWidth: width(size, 20)),
                                          suffixIcon: InkWell(
                                            onTap: () => controller
                                                    .cvvPassword.value =
                                                !controller.cvvPassword.value,
                                            child: controller
                                                        .cvvPassword.value ==
                                                    true
                                                ? SvgPicture.asset(
                                                    'assets/images/eye-slash.svg')
                                                : Icon(Icons
                                                    .remove_red_eye_outlined),
                                          )),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height(size, 20),
                            ),
                            Text(
                              'Card Holder\'s Name',
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
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    hintText: 'Name on card',
                                    enabled: true,
                                    fillColor: Colors.white,
                                    filled: true),
                              ),
                            ),
                            Spacer(),
                            CustomButton(
                                size: size, title: 'Save card and Proceed')
                          ],
                        ),
                      );
                    }),
                child: CustomButton(size: size, title: 'Proceed to pay'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
