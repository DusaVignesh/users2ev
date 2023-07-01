import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/custom/service.dart';
import 'package:s2ev_user/data/services.dart';
import 'package:s2ev_user/routes/routes.dart';

import '../constants/constants.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(size, 250),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            for (int i = 0; i < titleServices.length; i++)
              InkWell(
                onTap: () => Get.toNamed(servicePages[i]),
                child: CustomService(
                  size: size,
                  svglocation: svgLocationServices[i],
                  title: titleServices[i],
                  boxWidth: i == 2 ? 100 : 52,
                ),
              )
          ],
        ),
      ),
    );
  }
}
