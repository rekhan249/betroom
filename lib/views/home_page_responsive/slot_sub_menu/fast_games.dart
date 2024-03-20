import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/home_page_responsive/customiz_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FastGameSlots extends StatelessWidget {
  const FastGameSlots({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSizing = MediaQuery.of(context).size;
    return Container(
      color: Colors.black.withOpacity(0.8),
      child: SizedBox(
        height: screenSizing.height,
        width: screenSizing.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ComtomizWigetStackWithTag(),
              kSizeBoxTwenty,
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  "NEW",
                  style: TextStyle(color: mainGreenColor, fontSize: 8.sp),
                ),
              ),
              const ComtomizWigetStackWithTag(),
            ],
          ),
        ),
      ),
    );
  }
}
