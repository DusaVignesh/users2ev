import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/routes/routes.dart';
import '../constants/constants.dart';
import '../controller/controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    super.key,
  });

  final Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              color: boxShadowColor, blurRadius: 5, offset: Offset(0.0, 0.75))
        ]),
        child: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (index) {
            controller.selectedIndex = index;
            Get.toNamed(bottomNavigation[index]);
          },
          elevation: 10,
          selectedItemColor: secondaryTextColor,
          selectedFontSize: 12,
          selectedIconTheme: const IconThemeData(color: primaryColor),
          unselectedIconTheme: IconThemeData(color: ternaryColor.shade100),
          backgroundColor: backgroundColor,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/home.svg',
                ),
                activeIcon: SvgPicture.asset(
                  'assets/images/home.svg',
                  // ignore: deprecated_member_use
                  color: primaryColor,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/images/service.svg',
                  color: primaryColor,
                ),
                icon: SvgPicture.asset('assets/images/service.svg'),
                label: 'Service'),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/images/profile.svg',
                  color: primaryColor,
                ),
                icon: SvgPicture.asset('assets/images/profile.svg'),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
