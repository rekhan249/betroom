import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/bounus_bay_slot.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/crash_games.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/fast_games.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/jacpot_slot.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/megaway_multiway.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/new_slot.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/scratch_slots.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/slot_all.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/table_game.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/video_bingo.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/video_poker.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/video_slot.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/vitual_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

// ===========================================================
//               Comtomiz Wiget without Stack
//  ==========================================================

class ComtomizWiget extends StatelessWidget {
  const ComtomizWiget({
    super.key,
    required this.screensize,
  });

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: screensize.width,
        height: screensize.height * 0.35,
        decoration: const BoxDecoration(color: dark),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 3.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          child: Image.asset(
                            "assets/images/games.jpg",
                            cacheHeight: 180,
                            cacheWidth: 200,
                          ),
                        )),
                    kSizeBoxFive,
                    const Text("TOP GAMES",
                        style: TextStyle(
                            color: whiteColor, fontWeight: FontWeight.bold)),
                  ]),
            );
          },
        ));
  }
}

// ===========================================================
//               Comtomiz Wiget with Stack
//  ==========================================================

class ComtomizWigetStack extends StatelessWidget {
  const ComtomizWigetStack({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return Container(
              width: screensize.width,
              height: screensize.height * 0.4,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.r))),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.r)),
                                    child: Image.asset(
                                      "assets/images/games.jpg",
                                      cacheHeight: 175,
                                      cacheWidth: 205,
                                    ),
                                  ),
                                  Positioned(
                                      left: 35,
                                      top: 35,
                                      child: Column(children: [
                                        Icon(
                                          Icons.play_arrow_outlined,
                                          color: whiteColor,
                                          size: 20.sp,
                                        ),
                                        kSizeBoxTen,
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                shape: MaterialStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8.r)),
                                                        side:
                                                            const BorderSide())),
                                                backgroundColor:
                                                    const MaterialStatePropertyAll(
                                                        mainGreenColor)),
                                            onPressed: () {},
                                            child: Text("Play For Fun",
                                                style: TextStyle(
                                                    color: whiteColor,
                                                    fontSize: 3.sp,
                                                    fontWeight:
                                                        FontWeight.bold)))
                                      ])),
                                ],
                              )),
                          kSizeBoxFive,
                          Container(
                              decoration: const BoxDecoration(),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("TOP GAMES",
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 10.sp,
                                          )),
                                      Text("TOP GAMES",
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              color: mainGreenColor,
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                  SizedBox(width: 20.w),
                                  const Icon(Icons.add_circle_sharp,
                                      color: whiteColor),
                                ],
                              )),
                        ]),
                  );
                },
              ));
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Container(
              width: screensize.width,
              height: screensize.height * 0.25,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.r))),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.r)),
                                    child: Image.asset(
                                        "assets/images/games.jpg",
                                        cacheHeight: 130,
                                        cacheWidth: 160),
                                  ),
                                  Positioned(
                                      left: 20,
                                      top: 10,
                                      child: Column(children: [
                                        Icon(Icons.play_arrow_outlined,
                                            color: whiteColor, size: 60.sp),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                shape: MaterialStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8.r)),
                                                        side:
                                                            const BorderSide())),
                                                backgroundColor:
                                                    const MaterialStatePropertyAll(
                                                        mainGreenColor)),
                                            onPressed: () {},
                                            child: Text("Play For Fun",
                                                style: TextStyle(
                                                    color: whiteColor,
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.bold)))
                                      ])),
                                ],
                              )),
                          kSizeBoxFive,
                          Container(
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("TOP GAMES",
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 10.sp,
                                          )),
                                      Text("TOP GAMES",
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              color: mainGreenColor,
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                  SizedBox(width: 20.w),
                                  const Icon(Icons.add_circle_sharp,
                                      color: whiteColor),
                                ],
                              )),
                        ]),
                  );
                },
              ));
        }
        return Container(
            width: screensize.width,
            height: screensize.height * 0.4,
            decoration: const BoxDecoration(color: Colors.transparent),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r))),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.r)),
                                  child: Image.asset(
                                    "assets/images/games.jpg",
                                    cacheHeight: 175,
                                    cacheWidth: 205,
                                  ),
                                ),
                                Positioned(
                                    left: 35,
                                    top: 35,
                                    child: Column(children: [
                                      Icon(
                                        Icons.play_arrow_outlined,
                                        color: whiteColor,
                                        size: 20.sp,
                                      ),
                                      kSizeBoxTen,
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8.r)),
                                                      side:
                                                          const BorderSide())),
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      mainGreenColor)),
                                          onPressed: () {},
                                          child: Text("Play For Fun",
                                              style: TextStyle(
                                                  color: whiteColor,
                                                  fontSize: 3.sp,
                                                  fontWeight: FontWeight.bold)))
                                    ])),
                              ],
                            )),
                        kSizeBoxFive,
                        Container(
                            decoration: const BoxDecoration(),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("TOP GAMES",
                                        style: TextStyle(
                                          color: whiteColor,
                                          fontSize: 4.sp,
                                        )),
                                    Text("TOP GAMES",
                                        style: TextStyle(
                                            fontSize: 3.sp,
                                            color: mainGreenColor,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                                SizedBox(width: 20.w),
                                const Icon(Icons.add_circle_sharp,
                                    color: whiteColor),
                              ],
                            )),
                      ]),
                );
              },
            ));
      },
    );
  }
}

// ===========================================================
//               Comtomiz Wiget with Stack with top tag
//  ==========================================================
class ComtomizWigetStackWithTag extends StatelessWidget {
  const ComtomizWigetStackWithTag({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return Container(
              height: screensize.height,
              width: screensize.width,
              padding: EdgeInsets.only(top: 15.h, left: 2.w, right: 2.w),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6),
                itemCount: imagesList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.r))),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.r)),
                                    child: Image.network(
                                      imagesList[index],
                                      cacheHeight: 175,
                                      cacheWidth: 205,
                                    ),
                                  ),
                                  Positioned(
                                      left: 35,
                                      top: 35,
                                      child: Column(children: [
                                        Icon(
                                          Icons.play_arrow_outlined,
                                          color: whiteColor,
                                          size: 20.sp,
                                        ),
                                        kSizeBoxTen,
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                shape: MaterialStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8.r)),
                                                        side:
                                                            const BorderSide())),
                                                backgroundColor:
                                                    const MaterialStatePropertyAll(
                                                        mainGreenColor)),
                                            onPressed: () {},
                                            child: Text("Play For Fun",
                                                style: TextStyle(
                                                    color: whiteColor,
                                                    fontSize: 3.sp,
                                                    fontWeight:
                                                        FontWeight.bold)))
                                      ])),
                                ],
                              )),
                          kSizeBoxFive,
                          Container(
                              decoration: const BoxDecoration(),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("TOP GAMES",
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 4.sp,
                                          )),
                                      Text("TOP GAMES",
                                          style: TextStyle(
                                              fontSize: 3.sp,
                                              color: mainGreenColor,
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                  SizedBox(width: 20.w),
                                  const Icon(Icons.add_circle_sharp,
                                      color: whiteColor),
                                ],
                              )),
                        ]),
                  );
                },
              ));
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return Container(
              height: screensize.height,
              width: screensize.width,
              padding: EdgeInsets.only(top: 15.h, left: 2.w, right: 2.w),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6),
                itemCount: imagesList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.r))),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.r)),
                                    child: Image.network(
                                      imagesList[index],
                                      cacheHeight: 175,
                                      cacheWidth: 205,
                                    ),
                                  ),
                                  Positioned(
                                      left: 35,
                                      top: 35,
                                      child: Column(children: [
                                        Icon(
                                          Icons.play_arrow_outlined,
                                          color: whiteColor,
                                          size: 20.sp,
                                        ),
                                        kSizeBoxTen,
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                shape: MaterialStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8.r)),
                                                        side:
                                                            const BorderSide())),
                                                backgroundColor:
                                                    const MaterialStatePropertyAll(
                                                        mainGreenColor)),
                                            onPressed: () {},
                                            child: Text("Play For Fun",
                                                style: TextStyle(
                                                    color: whiteColor,
                                                    fontSize: 3.sp,
                                                    fontWeight:
                                                        FontWeight.bold)))
                                      ])),
                                ],
                              )),
                          kSizeBoxFive,
                          Container(
                              decoration: const BoxDecoration(),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("TOP GAMES",
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 4.sp,
                                          )),
                                      Text("TOP GAMES",
                                          style: TextStyle(
                                              fontSize: 3.sp,
                                              color: mainGreenColor,
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                  SizedBox(width: 20.w),
                                  const Icon(Icons.add_circle_sharp,
                                      color: whiteColor),
                                ],
                              )),
                        ]),
                  );
                },
              ));
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Container(
              height: screensize.height,
              width: screensize.width,
              padding: EdgeInsets.only(top: 10.h, left: 2.w, right: 2.w),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: imagesList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.r))),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.r)),
                                    child: Image.network(
                                      imagesList[index],
                                      cacheHeight: 170,
                                      cacheWidth: 205,
                                    ),
                                  ),
                                  Positioned(
                                      left: 15,
                                      top: 10,
                                      child: Column(children: [
                                        Icon(
                                          Icons.play_arrow_outlined,
                                          color: whiteColor,
                                          size: 60.sp,
                                        ),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                shape: MaterialStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8.r)),
                                                        side:
                                                            const BorderSide())),
                                                backgroundColor:
                                                    const MaterialStatePropertyAll(
                                                        mainGreenColor)),
                                            onPressed: () {},
                                            child: Text("Play For Fun",
                                                style: TextStyle(
                                                    color: whiteColor,
                                                    fontSize: 14.sp,
                                                    fontWeight:
                                                        FontWeight.bold)))
                                      ])),
                                ],
                              )),
                          kSizeBoxFive,
                          Container(
                              decoration: const BoxDecoration(),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("TOP GAMES",
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 10.sp,
                                          )),
                                      Text("TOP GAMES",
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              color: mainGreenColor,
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                  SizedBox(width: 20.w),
                                  const Icon(Icons.add_circle_sharp,
                                      color: whiteColor),
                                ],
                              )),
                        ]),
                  );
                },
              ));
        }

        return Container(
            height: screensize.height,
            width: screensize.width,
            padding: EdgeInsets.only(top: 15.h, left: 2.w, right: 2.w),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6),
              itemCount: imagesList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r))),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.r)),
                                  child: Image.network(
                                    imagesList[index],
                                    cacheHeight: 175,
                                    cacheWidth: 205,
                                  ),
                                ),
                                Positioned(
                                    left: 35,
                                    top: 35,
                                    child: Column(children: [
                                      Icon(
                                        Icons.play_arrow_outlined,
                                        color: whiteColor,
                                        size: 20.sp,
                                      ),
                                      kSizeBoxTen,
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8.r)),
                                                      side:
                                                          const BorderSide())),
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      mainGreenColor)),
                                          onPressed: () {},
                                          child: Text("Play For Fun",
                                              style: TextStyle(
                                                  color: whiteColor,
                                                  fontSize: 3.sp,
                                                  fontWeight: FontWeight.bold)))
                                    ])),
                              ],
                            )),
                        kSizeBoxFive,
                        Container(
                            decoration: const BoxDecoration(),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("TOP GAMES",
                                        style: TextStyle(
                                          color: whiteColor,
                                          fontSize: 4.sp,
                                        )),
                                    Text("TOP GAMES",
                                        style: TextStyle(
                                            fontSize: 3.sp,
                                            color: mainGreenColor,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                                SizedBox(width: 20.w),
                                const Icon(Icons.add_circle_sharp,
                                    color: whiteColor),
                              ],
                            )),
                      ]),
                );
              },
            ));
      },
    );
  }
}

// ===========================================================
//               Slot Tabs Customize
//  ==========================================================
class SlotTabsCustomize extends StatelessWidget {
  const SlotTabsCustomize({super.key, required this.tabController});

  // ignore: prefer_typing_uninitialized_variables
  final tabController;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return Container(
          height: screensize.height,
          width: screensize.width,
          decoration: const BoxDecoration(color: dark),
          child: Column(children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Search here",
                          hintStyle: const TextStyle(color: whiteColor),
                          suffixIcon:
                              const Icon(Icons.search, color: whiteColor),
                          contentPadding: const EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(color: whiteColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide:
                                  const BorderSide(color: mainGreenColor)),
                          errorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(color: Colors.red)),
                          border: const UnderlineInputBorder(
                              borderSide: BorderSide.none),
                          disabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 05.w, left: 05.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          border: Border.all(color: whiteColor)),
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                      child: Row(
                        children: [
                          const Text("Providers",
                              style: TextStyle(color: whiteColor)),
                          SizedBox(width: 2.w),
                          Expanded(
                              child: Icon(Icons.play_arrow,
                                  color: whiteColor, size: 8.sp))
                        ],
                      )),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.only(right: 5.w),
                    height: screensize.height * 0.1,
                    width: screensize.width * 0.7,
                    decoration: const BoxDecoration(color: dark),
                    child: TabBar(
                        dividerHeight: 0,
                        labelColor: mainGreenColor,
                        unselectedLabelColor: whiteColor,
                        // dividerColor: mainGreenColor,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelPadding: const EdgeInsets.all(7),
                        indicatorPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        indicatorColor: mainGreenColor,
                        indicatorWeight: 5,
                        controller: tabController,
                        // dragStartBehavior: DragStartBehavior.start,
                        isScrollable: true,
                        tabs: [
                          Tab(
                              child: Text("ALL",
                                  style: TextStyle(fontSize: 4.sp))),
                          Tab(
                            child:
                                Text("NEW", style: TextStyle(fontSize: 4.sp)),
                          ),
                          Tab(
                              child: Text("JACKPOT",
                                  style: TextStyle(fontSize: 4.sp))),
                          Tab(
                              child: Text("BONUSBUY",
                                  style: TextStyle(fontSize: 4.sp))),
                          Tab(
                              child: Text("MEGAWAYS & MULTIWAYS",
                                  style: TextStyle(fontSize: 4.sp))),
                          Tab(
                              child: Text("VIRTUAL GAMES",
                                  style: TextStyle(fontSize: 4.sp))),
                          Tab(
                              child: Text("TABLE GAMES",
                                  style: TextStyle(fontSize: 4.sp))),
                          Tab(
                              child: Text("VIDEO BINGO",
                                  style: TextStyle(fontSize: 4.sp))),
                          Tab(
                              child: Text("VIDEO POKER",
                                  style: TextStyle(fontSize: 4.sp))),
                          Tab(
                              child: Text("VIDEO SLOTS",
                                  style: TextStyle(fontSize: 4.sp))),
                          Tab(
                              child: Text("SCRATCH CARDS",
                                  style: TextStyle(fontSize: 4.sp))),
                          Tab(
                              child: Text("CRASH GAMES",
                                  style: TextStyle(fontSize: 4.sp))),
                          Tab(
                              child: Text("FAST GAMES",
                                  style: TextStyle(fontSize: 4.sp))),
                        ]),
                  ),
                ),
              ],
            ),
            Flexible(
                fit: FlexFit.loose,
                child: TabBarView(
                    viewportFraction: 1,
                    controller: tabController,
                    children: const [
                      AllSlotsAll(),
                      NewSlotsNew(),
                      JackPotSlotJackPot(),
                      BounusSlotBay(),
                      MegaWaySlotMultiWay(),
                      VirtualSlotGame(),
                      TableSlotGame(),
                      VideoSlotBingo(),
                      VideoSlotPoker(),
                      VideoSlotSlots(),
                      ScratchCardsSlots(),
                      CrashGameSlots(),
                      FastGameSlots()
                    ])),
          ]),
        );
      }
      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Container(
          height: screensize.height,
          width: screensize.width,
          decoration: const BoxDecoration(color: dark),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Search here",
                          hintStyle: const TextStyle(color: whiteColor),
                          suffixIcon:
                              const Icon(Icons.search, color: whiteColor),
                          contentPadding: const EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(color: whiteColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide:
                                  const BorderSide(color: mainGreenColor)),
                          errorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(color: Colors.red)),
                          border: const UnderlineInputBorder(
                              borderSide: BorderSide.none),
                          disabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          border: Border.all(color: whiteColor)),
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Providers",
                              style: TextStyle(color: whiteColor)),
                          SizedBox(width: 2.w),
                          Expanded(
                              child: Icon(Icons.play_arrow,
                                  color: whiteColor, size: 25.sp))
                        ],
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 5.w),
                    decoration: const BoxDecoration(color: dark),
                    child: TabBar(
                        dividerHeight: 0,
                        labelColor: mainGreenColor,
                        unselectedLabelColor: whiteColor,
                        // dividerColor: mainGreenColor,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelPadding: const EdgeInsets.all(7),
                        indicatorPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        indicatorColor: mainGreenColor,
                        indicatorWeight: 5,
                        controller: tabController,
                        // dragStartBehavior: DragStartBehavior.start,
                        isScrollable: true,
                        tabs: [
                          Tab(
                              child: Text("ALL",
                                  style: TextStyle(fontSize: 16.sp))),
                          Tab(
                            child:
                                Text("NEW", style: TextStyle(fontSize: 16.sp)),
                          ),
                          Tab(
                              child: Text("JACKPOT",
                                  style: TextStyle(fontSize: 16.sp))),
                          Tab(
                              child: Text("BONUSBUY",
                                  style: TextStyle(fontSize: 16.sp))),
                          Tab(
                              child: Text("MEGAWAYS & MULTIWAYS",
                                  style: TextStyle(fontSize: 16.sp))),
                          Tab(
                              child: Text("VIRTUAL GAMES",
                                  style: TextStyle(fontSize: 16.sp))),
                          Tab(
                              child: Text("TABLE GAMES",
                                  style: TextStyle(fontSize: 16.sp))),
                          Tab(
                              child: Text("VIDEO BINGO",
                                  style: TextStyle(fontSize: 16.sp))),
                          Tab(
                              child: Text("VIDEO POKER",
                                  style: TextStyle(fontSize: 16.sp))),
                          Tab(
                              child: Text("VIDEO SLOTS",
                                  style: TextStyle(fontSize: 16.sp))),
                          Tab(
                              child: Text("SCRATCH CARDS",
                                  style: TextStyle(fontSize: 16.sp))),
                          Tab(
                              child: Text("CRASH GAMES",
                                  style: TextStyle(fontSize: 16.sp))),
                          Tab(
                              child: Text("FAST GAMES",
                                  style: TextStyle(fontSize: 16.sp))),
                        ]),
                  ),
                ),
              ],
            ),
            Flexible(
                fit: FlexFit.loose,
                child: TabBarView(controller: tabController, children: const [
                  AllSlotsAll(),
                  NewSlotsNew(),
                  JackPotSlotJackPot(),
                  BounusSlotBay(),
                  MegaWaySlotMultiWay(),
                  VirtualSlotGame(),
                  TableSlotGame(),
                  VideoSlotBingo(),
                  VideoSlotPoker(),
                  VideoSlotSlots(),
                  ScratchCardsSlots(),
                  CrashGameSlots(),
                  FastGameSlots()
                ])),
          ]),
        );
      }
      return Container(
        height: screensize.height,
        width: screensize.width,
        decoration: const BoxDecoration(color: dark),
        child: Column(children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5.w),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search here",
                        hintStyle: const TextStyle(color: whiteColor),
                        suffixIcon: const Icon(Icons.search, color: whiteColor),
                        contentPadding: const EdgeInsets.all(10),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                            borderSide: const BorderSide(color: whiteColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                            borderSide:
                                const BorderSide(color: mainGreenColor)),
                        errorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                            borderSide: const BorderSide(color: Colors.red)),
                        border: const UnderlineInputBorder(
                            borderSide: BorderSide.none),
                        disabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 05.w, left: 05.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        border: Border.all(color: whiteColor)),
                    padding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                    child: Row(
                      children: [
                        const Text("Providers",
                            style: TextStyle(color: whiteColor)),
                        SizedBox(width: 2.w),
                        Expanded(
                            child: Icon(Icons.play_arrow,
                                color: whiteColor, size: 8.sp))
                      ],
                    )),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.only(right: 5.w),
                  height: screensize.height * 0.1,
                  width: screensize.width * 0.7,
                  decoration: const BoxDecoration(color: dark),
                  child: TabBar(
                      dividerHeight: 0,
                      labelColor: mainGreenColor,
                      unselectedLabelColor: whiteColor,
                      // dividerColor: mainGreenColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelPadding: const EdgeInsets.all(7),
                      indicatorPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      indicatorColor: mainGreenColor,
                      indicatorWeight: 5,
                      controller: tabController,
                      // dragStartBehavior: DragStartBehavior.start,
                      isScrollable: true,
                      tabs: [
                        Tab(
                            child:
                                Text("ALL", style: TextStyle(fontSize: 4.sp))),
                        Tab(
                          child: Text("NEW", style: TextStyle(fontSize: 4.sp)),
                        ),
                        Tab(
                            child: Text("JACKPOT",
                                style: TextStyle(fontSize: 4.sp))),
                        Tab(
                            child: Text("BONUSBUY",
                                style: TextStyle(fontSize: 4.sp))),
                        Tab(
                            child: Text("MEGAWAYS & MULTIWAYS",
                                style: TextStyle(fontSize: 4.sp))),
                        Tab(
                            child: Text("VIRTUAL GAMES",
                                style: TextStyle(fontSize: 4.sp))),
                        Tab(
                            child: Text("TABLE GAMES",
                                style: TextStyle(fontSize: 4.sp))),
                        Tab(
                            child: Text("VIDEO BINGO",
                                style: TextStyle(fontSize: 4.sp))),
                        Tab(
                            child: Text("VIDEO POKER",
                                style: TextStyle(fontSize: 4.sp))),
                        Tab(
                            child: Text("VIDEO SLOTS",
                                style: TextStyle(fontSize: 4.sp))),
                        Tab(
                            child: Text("SCRATCH CARDS",
                                style: TextStyle(fontSize: 4.sp))),
                        Tab(
                            child: Text("CRASH GAMES",
                                style: TextStyle(fontSize: 4.sp))),
                        Tab(
                            child: Text("FAST GAMES",
                                style: TextStyle(fontSize: 4.sp))),
                      ]),
                ),
              ),
            ],
          ),
          Flexible(
              fit: FlexFit.loose,
              child: TabBarView(
                  viewportFraction: 1,
                  controller: tabController,
                  children: const [
                    AllSlotsAll(),
                    NewSlotsNew(),
                    JackPotSlotJackPot(),
                    BounusSlotBay(),
                    MegaWaySlotMultiWay(),
                    VirtualSlotGame(),
                    TableSlotGame(),
                    VideoSlotBingo(),
                    VideoSlotPoker(),
                    VideoSlotSlots(),
                    ScratchCardsSlots(),
                    CrashGameSlots(),
                    FastGameSlots()
                  ])),
        ]),
      );
    });
  }
}
