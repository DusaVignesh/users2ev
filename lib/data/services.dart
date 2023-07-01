import 'package:flutter/material.dart';
import 'package:s2ev_user/constants/constants.dart';

const List<String> svgLocationServices = [
  'assets/images/battery_care.svg',
  'assets/images/brake_failure.svg',
  'assets/images/cycle_motor_scanning.svg',
  'assets/images/chain_failure.svg',
  'assets/images/tyre_damage.svg',
  'assets/images/other_service.svg'
];
const List<String> titleServices = [
  'Battery Care',
  'Brake Failure',
  'Cycle Motor Scanning',
  'Chain Failure',
  'Tyre Damage',
  'Other Service'
];
const List<String> info = [
  'Instant Refund On Cancellation',
  'Dedicated Service Buddy',
  'Response Time Within 10 min'
];
const List<Map<String, String>> allusers = [
  {"title": "GHM Model-Z", "route": "/ghm_model_z"},
  {"title": "GHM Model-I", "route": "/ghm_model_i"},
  {"title": "GHM Model-F", "route": "/ghm_model_f"},
  {"title": "GHM Model-E", "route": "/ghm_model_e"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
  {"title": "GHM Model-L", "route": "/ghm_model_l"},
];
List<Map<String, dynamic>> additionlServices = [
  {
    "title": "Service ID",
    "subtitle": "S2EV5141",
    "color": Color(0xff1E1E1E),
    "size": 14.0,
    "weight": FontWeight.normal
  },
  {
    "title": "Model",
    "subtitle": "Model-F",
    "color": Color(0xff1E1E1E),
    "size": 14.0,
    "weight": FontWeight.normal
  },
  {
    "title": "Service Type",
    "subtitle": "Bike repair services",
    "color": primaryTextColor,
    "size": 14.0,
    "weight": FontWeight.w500
  },
  {
    "title": "Booking Fee",
    "subtitle": "₹ 99",
    "color": primaryTextColor,
    "size": 20.0,
    "weight": FontWeight.w600
  },
];
List<Map<String, dynamic>> services = [
  {
    "title": "Ongoing",
    "img": "assets/images/services/ongoing.svg",
  },
  {
    "title": "Completed",
    "img": "assets/images/services/completed.svg",
  },
  {
    "title": "Unresolved",
    "img": "assets/images/services/unresolved.svg",
  },
];
List<String> cancelReasons = [
  "Dissatisfaction with the service",
  "Unexpected Emergency",
  "Cost Considerations",
  "Change of plans",
  "Found Alternative Service"
];
List<Map<String, dynamic>> completedFee = [
  {"fee": "Service Fee", "amount": 450},
  {"fee": "Tax Invoice", "amount": 30},
];
Map<String, List<dynamic>> profile = {
  "general": [
    {"title": "Services", "route": "/profile/services"},
    {
      "title": "Favourite Service Providers",
      "route": "/profile/favouriteServiceProvider"
    },
    {"title": "Your Reviews", "route": "/profile/yourReviews"},
    {"title": "Scan QR", "route": "/profile/scanQR"},
    {"title": "Notifications", "route": "/profile/notifications"}
  ],
  "support": [
    {"title": "About Us", "route": "/profile/aboutUs"},
    {"title": "Privacy Policy", "route": "/profile/privacyPolicy"},
    {"title": "Contact Us", "route": "/profile/contactUs"},
  ]
};
List<String> paymentMode = ["gpay", "phonepe", "razorpay"];
final List<String> months = [
  "Month",
  "january",
  "february",
  "march",
  "april",
  "may"
];
final List<String> years = ["Year", "2022", "2023", "2024", "2025", "2026"];
