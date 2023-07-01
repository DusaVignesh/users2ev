import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/secondary-appbar.dart';

class FavourtieServiceProvider extends StatelessWidget {
  const FavourtieServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomSecondaryAppbar(
              size: size, title: 'Favourite Service Providers')
          .appbar(),
      backgroundColor: backgroundColor,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 17, horizontal: 15),
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: height(size, 17),
            ),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 11),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: appbarBackgroundColor),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Color(0xffD6D6D6),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        'assets/images/account.png',
                        width: 55,
                        height: 55,
                      ),
                    ),
                    SizedBox(
                      width: width(size, 10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Hari',
                            style: secondaryTextStyle16,
                          ),
                        ),
                        SizedBox(
                          height: height(size, 6),
                        ),
                        SizedBox(
                          height: height(size, 16),
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) => Icon(
                                    Icons.star_rate_rounded,
                                    size: 24,
                                    color: underlineColor,
                                  )),
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: SvgPicture.asset('assets/images/delete.svg'),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
