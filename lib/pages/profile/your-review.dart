import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/custom/secondary-appbar.dart';

class YourReview extends StatelessWidget {
  const YourReview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:
          CustomSecondaryAppbar(size: size, title: 'Reviews', position: true)
              .appbar(),
      backgroundColor: backgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: ListView.separated(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 11, horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: appbarBackgroundColor),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text(
                        '26 May,2023 ',
                        style: primaryTextStyle14w600,
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: width(size, 290),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris.',
                        style: primaryTextStyle14,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            height: height(size, 10),
          ),
        ),
      ),
    );
  }
}
