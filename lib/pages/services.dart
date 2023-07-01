import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/button.dart';
import 'package:s2ev_user/custom/navigationbar.dart';
import 'package:s2ev_user/custom/services/completed.dart';
import 'package:s2ev_user/custom/services/ongoing.dart';

import '../controller/controller.dart';
import '../custom/address-bar.dart';
import '../custom/services/unresolved.dart';
import '../custom/user.dart';
import '../data/services.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Controller controller = Get.put(Controller());
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Container(
          padding: EdgeInsets.fromLTRB(
            20,
            47,
            20,
            20,
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              LimitedBox(
                maxHeight: height(size, 108),
                maxWidth: double.infinity,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: width(size, 20),
                  ),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => InkWell(
                        onTap: () => controller.servicesNavigation.value =
                            services[index]['title'],
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: controller.servicesNavigation.value ==
                                      services[index]['title']
                                  ? primaryColor
                                  : appbarBackgroundColor),
                          width: width(size, 110),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                services[index]['img'],
                                color: controller.servicesNavigation.value ==
                                        services[index]['title']
                                    ? Colors.white
                                    : primaryTextColor,
                              ),
                              SizedBox(
                                height: height(size, 8),
                              ),
                              Text(
                                services[index]['title'],
                                style: TextStyle(
                                    color:
                                        controller.servicesNavigation.value ==
                                                services[index]['title']
                                            ? Colors.white
                                            : primaryTextColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height(size, 28),
              ),
              SizedBox(
                height: height(size, 575),
                child: Obx(
                  () {
                    if (controller.servicesNavigation.value == 'Ongoing') {
                      return CustomOngoing(size: size);
                    }
                    if (controller.servicesNavigation.value == 'Completed') {
                      return CustomCompleted(size: size);
                    }
                    if (controller.servicesNavigation.value == 'Unresolved') {
                      return CustomUnresolved(size: size);
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
