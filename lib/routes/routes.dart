import 'package:get/get.dart';
import 'package:s2ev_user/custom/review.dart';
import 'package:s2ev_user/data/services.dart';
import 'package:s2ev_user/pages/HomeScreen.dart';
import 'package:s2ev_user/pages/booked-successful.dart';
import 'package:s2ev_user/pages/cancel.dart';
import 'package:s2ev_user/pages/models/ghm-model-e.dart';
import 'package:s2ev_user/pages/models/ghm-model-f.dart';
import 'package:s2ev_user/pages/models/ghm-model-i.dart';
import 'package:s2ev_user/pages/models/ghm-model-l.dart';
import 'package:s2ev_user/pages/models/ghm-model-z.dart';
import 'package:s2ev_user/pages/ongoing/ongoing.dart';
import 'package:s2ev_user/pages/payment.dart';
import 'package:s2ev_user/pages/payment/billPay.dart';
import 'package:s2ev_user/pages/profile.dart';
import 'package:s2ev_user/pages/profile/edit.dart';
import 'package:s2ev_user/pages/profile/favourite-service-provider.dart';
import 'package:s2ev_user/pages/profile/your-review.dart';
import 'package:s2ev_user/pages/services.dart';
import 'package:s2ev_user/pages/services/brake-failure.dart';
import 'package:s2ev_user/pages/services/chain-failure.dart';
import 'package:s2ev_user/pages/services/cycle-motor-scanning.dart';
import 'package:s2ev_user/pages/services/other-services.dart';
import 'package:s2ev_user/pages/services/tyre-damage.dart';
import 'package:s2ev_user/pages/temp.dart';

import '../pages/add-cycle.dart';
import '../pages/services/battery-care.dart';

String home = '/home';
const List<String> servicePages = [
  '/batterycare',
  '/brakeFailure',
  '/cycleMotorScanning',
  '/chainFailure',
  '/tyreDamage',
  '/otherService',
  '/addCycle'
];
const List<String> bottomNavigation = ['/home', '/services', '/profile'];
const List<String> Models = [
  '/ghm_model_z',
  '/ghm_model_i',
  '/ghm_model_f',
  '/ghm_model_e',
  '/ghm_model_l'
];
const String payment = '/payment';
const String booked = '/bookedSuccesful';
const String ongoingJobs = '/ongoingJobs';
const String review = "/review";
const String cancelJob = "/cancelJob";
const String edit = "/profile/edit";
const String billPay = "/billPay";
List<GetPage> pages = [
  GetPage(name: home, page: () => temp()),
  GetPage(name: servicePages[0], page: () => BatteryCare()),
  GetPage(name: servicePages[1], page: () => BrakeFailure()),
  GetPage(name: servicePages[2], page: () => CycleMotorScanning()),
  GetPage(name: servicePages[3], page: () => ChainFailure()),
  GetPage(name: servicePages[4], page: () => TyreDamage()),
  GetPage(name: servicePages[5], page: () => OtherServices()),
  GetPage(name: servicePages[6], page: () => AddCycle()),
  GetPage(name: bottomNavigation[1], page: () => Services()),
  GetPage(name: bottomNavigation[2], page: () => Profile()),
  GetPage(name: Models[0], page: () => GHMModelZ()),
  GetPage(name: Models[1], page: () => GHMModelI()),
  GetPage(name: Models[2], page: () => GHMModelF()),
  GetPage(name: Models[3], page: () => GHMModelE()),
  GetPage(name: Models[4], page: () => GHMModelL()),
  GetPage(name: payment, page: () => Payment()),
  GetPage(name: booked, page: () => BookedSuccessful()),
  GetPage(name: ongoingJobs, page: () => Ongoing()),
  GetPage(name: review, page: () => Review()),
  GetPage(name: cancelJob, page: () => CancelJob()),
  GetPage(name: profile['general']![0]['route'], page: () => Profile()),
  GetPage(
      name: profile['general']![1]['route'],
      page: () => FavourtieServiceProvider()),
  GetPage(name: profile['general']![2]['route'], page: () => YourReview()),
  GetPage(name: profile['general']![3]['route'], page: () => Profile()),
  GetPage(name: profile['general']![4]['route'], page: () => Profile()),
  GetPage(name: edit, page: () => ProfileEdit()),
  GetPage(name: billPay, page: () => BillPay()),
];
