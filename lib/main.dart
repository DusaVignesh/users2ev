import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/pages/HomeScreen.dart';
import 'package:s2ev_user/routes/routes.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: home,
    getPages: pages,
  ));
}
