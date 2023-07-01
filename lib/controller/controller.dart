import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  set selectedIndex(x) => _selectedIndex.value = x;
  TextEditingController textController = TextEditingController();
  RxBool serviceAcceptedStatus = false.obs;
  RxDouble cusHeight = 0.0.obs;
  RxBool containerColor = false.obs;
  RxList<bool> stepProgress = List.generate(5, (index) => false).obs;
  RxBool switchStatus = false.obs;
  RxString servicesNavigation = "Ongoing".obs;
  RxString cancelReason = "Dissatisfaction with the service".obs;
  RxString paymentMode = "gpay".obs;
  RxBool cvvPassword = true.obs;
  RxString month = "Month".obs;
  RxString year = "Year".obs;
}
