import 'package:brb_100x/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VipProgram extends StatelessWidget {
  const VipProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: dark),
      child: SingleChildScrollView(
        child: Column(
          children: [
            kSizeBoxFifty,
            Text("VIP PROGRAM",
                style: TextStyle(
                    color: mainGreenColor,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold)),
            kSizeBoxFive,
            Text("Dare To Risk. Deserve To Win!",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 6.sp,
                    fontWeight: FontWeight.bold)),
            kSizeBoxTwenty,
            Center(
              child: Image.asset("assets/images/vipclub.jpeg",
                  cacheHeight: 360, width: 500),
            ),
            kSizeBoxTen,
            Container(
              width: 135.w,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                  "No matter if you are on a hot streak or on the grind, you will be a winner as a member of our VIP program. Progress through the VIP program with 4 levels and unlimited rewards with No wagering requirements. We are rewarding every week to make sure that you get what you deserve. Except numerous gifts of our appreciation.",
                  style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            ),
            kSizeBoxTen,
            Text("The Benefits",
                style: TextStyle(color: whiteColor, fontSize: 6.sp)),
            kSizeBoxTen,
            Text("Improved Cashback",
                style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Text("thrilling gambling experience",
                style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Container(
              width: 135.w,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                  "VIP members are eligible for a cashback of up to 20%. Moreover, high rollers get access to a customer offer as well.",
                  style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            ),
            kSizeBoxTen,
            Text("Free Spins",
                style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Container(
              width: 135.w,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                  "We love pampering our members with valuable gifts, and juicy free spins bundles are one of them. Members of our casino Loyalty club program get up to 100 free spins a week. To make your experience even more enjoyable, we give even more free spins together with higher spin value",
                  style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            ),
            kSizeBoxTen,
            Text("Exclusive Bonuses",
                style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            kSizeBoxTen,
            Container(
              width: 135.w,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                  "Free spins aren’t the only sweet treats you get access to! As a VIP club member, you can also claim several other kinds of bonuses on a weekly or monthly basis. From lucrative no deposit offers to special game promos – we have it all.",
                  style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            ),
            kSizeBoxTen,
            Text("Priority Responses",
                style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            Container(
              width: 135.w,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                  "We pride ourselves as one of the best online casino loyalty programs, and customer satisfaction is always our number one priority! So, we make it a point to be open to all forms of feedback, especially from our beloved Loyalty club members. If we don’t have your favorite game, or you have some constructive criticism about the Loyalty club scheme – let us know!",
                  style: TextStyle(color: whiteColor, fontSize: 4.sp)),
            ),
            kSizeBoxTen,
            TextButton(
                onPressed: () {},
                child: Text("Bonus Terms and Conditions",
                    style: TextStyle(color: mainGreenColor, fontSize: 4.sp))),
            kSizeBoxThirty
          ],
        ),
      ),
    );
  }
}
