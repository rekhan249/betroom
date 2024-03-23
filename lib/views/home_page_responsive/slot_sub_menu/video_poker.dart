import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/home_page_responsive/customiz_widgets/custom_widgets.dart';
import 'package:brb_100x/widgets/custom_promo_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoSlotPoker extends StatelessWidget {
  const VideoSlotPoker({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSizing = MediaQuery.of(context).size;
    return Container(
      color: dark,
      child: SizedBox(
        height: screenSizing.height,
        width: screenSizing.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              kSizeBoxTen,
              const PromoCustomPromotion(),
              kSizeBoxTen,
              const WhatsCustomWhatsNew(),
            ],
          ),
        ),
      ),
    );
  }
}
