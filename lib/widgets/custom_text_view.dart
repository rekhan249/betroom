


import 'package:brb_100x/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextAndViewAll extends StatelessWidget {
  const CustomTextAndViewAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("PROMOTIONS",
              style: TextStyle(
                  color: mainGreenColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 6.sp)),
          Container(
            padding: const EdgeInsets.all(05),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: mainGreenColor,
                borderRadius: BorderRadius.all(Radius.circular(10.r))),
            child: Row(
              children: [
                const Text(
                  "View All",
                  style: TextStyle(color: whiteColor),
                ),
                SizedBox(width: 5.w),
                Icon(Icons.arrow_forward_ios, color: whiteColor, size: 7.sp)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
