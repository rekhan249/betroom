import 'package:brb_100x/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionAndWhatsNew extends StatelessWidget {
  const PromotionAndWhatsNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      height: 400,
      width: double.infinity,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
                color: dark,
                padding: const EdgeInsets.only(left: 20, right: 05, top: 05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        "assets/images/games.jpg",
                        cacheHeight: 250,
                        cacheWidth: 420,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8),
                      child: Text("Start Your Journey.",
                          style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 5.sp)),
                    ),
                    kSizeBoxFive,
                    Container(
                      width: 30.w,
                      padding: const EdgeInsets.all(05),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: mainGreenColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          SizedBox(width: 2.w),
                          Icon(Icons.account_balance_wallet_outlined,
                              color: whiteColor, size: 7.sp),
                          SizedBox(width: 2.w),
                          const Text(
                            "View All",
                            style: TextStyle(color: whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
