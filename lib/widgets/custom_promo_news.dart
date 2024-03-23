import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/home_page_responsive/menu_main.dart/promotion_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PromoCustomPromotion extends StatelessWidget {
  const PromoCustomPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSizing = MediaQuery.of(context).size;
    return Container(
      height: screenSizing.height,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: dark.withOpacity(0.9)),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: promoImagesList.length,
          itemBuilder: (context, index) {
            return Card(
              color: dark,
              margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 30.h),
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.r))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.r),
                        topRight: Radius.circular(5.r)),
                    child: Image.asset(promoImagesList[index]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 6.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kSizeBoxFifteen,
                        Text(whatsNewTextsList[index],
                            style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 5.sp)),
                        kSizeBoxFifteen,
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PromotionSceen(),
                                ));
                          },
                          child: Container(
                            width: 30.w,
                            padding: const EdgeInsets.all(05),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: mainGreenColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.r))),
                            child: Row(
                              children: [
                                Icon(Icons.account_balance_wallet_outlined,
                                    color: whiteColor, size: 4.5.sp),
                                SizedBox(width: 1.w),
                                const Text(
                                  "Read More",
                                  style: TextStyle(color: whiteColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

///       Whats new custom card

class WhatsCustomWhatsNew extends StatelessWidget {
  const WhatsCustomWhatsNew({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSizing = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return Container(
            height: screenSizing.height,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: dark.withOpacity(0.9)),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: whatsNewImagesList.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: dark,
                    margin:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 10.h),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.r))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.r),
                              topRight: Radius.circular(5.r)),
                          child: Image.asset(whatsNewImagesList[index]),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8),
                              child: Text("GNOMES AND GIANTS BY RELAX GAMING",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 4.sp)),
                            ),
                            SizedBox(width: 8.w),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8),
                              child: Text("11 Mar, 2024",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 3.sp)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 2),
                          child: Text(
                              "A Whimsical Adventure in the World of Slots",
                              style: TextStyle(
                                  color: mainGreenColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 3.5.sp)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Text(
                                "Game Design and Origin ,A Whimsical Adventure in the World\n of SlotsA Whimsical Adventure in the Worldof Slots\n,A Whimsical Adventurein the World of Slots,A Whimsical\nGame Design and Origin ,A Whimsical Adventure in the World of Slots",
                                style: TextStyle(
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 3.5.sp)),
                          ),
                        ),
                        kSizeBoxFive,
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const WhatsCustomWhatsNew(),
                                ));
                          },
                          child: Container(
                            width: screenSizing.width * 0.11,
                            margin: const EdgeInsets.all(05),
                            padding: const EdgeInsets.all(05),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: mainGreenColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.r))),
                            child: Row(
                              children: [
                                Icon(Icons.account_balance_wallet_outlined,
                                    color: whiteColor, size: 4.sp),
                                SizedBox(width: 1.w),
                                const Text("Continue Reading",
                                    style: TextStyle(color: whiteColor)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          );
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Container(
            height: screenSizing.height,
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10.h),
            decoration: BoxDecoration(color: dark.withOpacity(0.9)),
            child: ListView.builder(
                itemCount: whatsNewImagesList.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: dark,
                    margin:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 10.h),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.r))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.r),
                              topRight: Radius.circular(5.r)),
                          child: Image.asset(whatsNewImagesList[index]),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8),
                              child: Text(
                                  "GNOMES AND GIANTS BY RELAX GAMING"
                                      .substring(0, 15),
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp)),
                            ),
                            SizedBox(width: 8.w),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8),
                              child: Text("11 Mar, 2024",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 2),
                          child: Text(
                              "A Whimsical Adventure in the World of Slots",
                              style: TextStyle(
                                  color: mainGreenColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Text(
                                "Game Design and Origin ,A Whimsical Adventure in the World\n of SlotsA Whimsical Adventure in the Worldof Slots\n,A Whimsical Adventurein the World of Slots,A Whimsical\nGame Design and Origin ,A Whimsical Adventure in the World of Slots",
                                style: TextStyle(
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp)),
                          ),
                        ),
                        kSizeBoxFive,
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const WhatsCustomWhatsNew(),
                                ));
                          },
                          child: Container(
                            margin: const EdgeInsets.all(05),
                            padding: const EdgeInsets.all(05),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: mainGreenColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.r))),
                            child: Row(
                              children: [
                                Icon(Icons.account_balance_wallet_outlined,
                                    color: whiteColor, size: 18.sp),
                                SizedBox(width: 2.w),
                                const Text("Continue Reading",
                                    style: TextStyle(color: whiteColor)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          );
        }
        return Container(
          height: screenSizing.height,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: dark.withOpacity(0.9)),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemCount: whatsNewImagesList.length,
              itemBuilder: (context, index) {
                return Card(
                  color: dark,
                  margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 10.h),
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.r))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.r),
                            topRight: Radius.circular(5.r)),
                        child: Image.asset(whatsNewImagesList[index]),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8),
                            child: Text("GNOMES AND GIANTS BY RELAX GAMING",
                                style: TextStyle(
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 4.sp)),
                          ),
                          SizedBox(width: 8.w),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8),
                            child: Text("11 Mar, 2024",
                                style: TextStyle(
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 3.sp)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 2),
                        child: Text(
                            "A Whimsical Adventure in the World of Slots",
                            style: TextStyle(
                                color: mainGreenColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 3.5.sp)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 8),
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: Text(
                              "Game Design and Origin ,A Whimsical Adventure in the World\n of SlotsA Whimsical Adventure in the Worldof Slots\n,A Whimsical Adventurein the World of Slots,A Whimsical\nGame Design and Origin ,A Whimsical Adventure in the World of Slots",
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 3.5.sp)),
                        ),
                      ),
                      kSizeBoxFive,
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const WhatsCustomWhatsNew(),
                              ));
                        },
                        child: Container(
                          width: screenSizing.width * 0.11,
                          margin: const EdgeInsets.all(05),
                          padding: const EdgeInsets.all(05),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: mainGreenColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.r))),
                          child: Row(
                            children: [
                              Icon(Icons.account_balance_wallet_outlined,
                                  color: whiteColor, size: 4.sp),
                              SizedBox(width: 1.w),
                              const Text("Continue Reading",
                                  style: TextStyle(color: whiteColor)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        );
      },
    );
  }
}
