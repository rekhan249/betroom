import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/auths/responsiveness/responsive_drawer.dart';
import 'package:brb_100x/views/home_page_responsive/slot_page.dart';
import 'package:brb_100x/views/home_page_responsive/slot_sub_menu/slot_all.dart';
import 'package:brb_100x/widgets/responsive_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // ignore: prefer_typing_uninitialized_variables
  var tabController;

  @override
  void initState() {
    tabController = TabController(length: 9, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSinzing = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: dark,
      appBar: const ResponsiveAppBar(),
      drawer: const ResponsiveDrawer(),
      body: Container(
        height: screenSinzing.height,
        decoration: const BoxDecoration(color: dark),
        child: Column(children: [
          Container(
            height: screenSinzing.height * 0.1,
            decoration: const BoxDecoration(color: dark),
            child: TabBar(
                dividerHeight: 0,
                labelColor: whiteColor,
                unselectedLabelColor: whiteColor,
                labelPadding: const EdgeInsets.all(7),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                indicatorWeight: 5,
                indicatorColor: mainGreenColor,
                controller: tabController,
                isScrollable: true,
                tabs: [
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 3.5.sp),
                      SizedBox(width: 1.w),
                      Text("SLOTS", style: TextStyle(fontSize: 3.5.sp))
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 3.5.sp),
                      SizedBox(width: 1.w),
                      Text("LIVE CASINO", style: TextStyle(fontSize: 3.5.sp))
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 3.5.sp),
                      SizedBox(width: 1.w),
                      Text("CRASH & FAST", style: TextStyle(fontSize: 3.5.sp))
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 3.5.sp),
                      SizedBox(width: 1.w),
                      Text("SPORTSBOOK", style: TextStyle(fontSize: 3.5.sp))
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 3.5.sp),
                      SizedBox(width: 1.w),
                      Text(" SPORTS/RACES", style: TextStyle(fontSize: 3.5.sp))
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 3.5.sp),
                      SizedBox(width: 1.w),
                      Text(" TOURNAMENTS", style: TextStyle(fontSize: 3.5.sp))
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 3.5.sp),
                      SizedBox(width: 1.w),
                      Text(" PROMOTIONS", style: TextStyle(fontSize: 3.5.sp))
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 3.5.sp),
                      SizedBox(width: 1.w),
                      Text("VIP PROGRAM", style: TextStyle(fontSize: 3.5.sp))
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 3.5.sp),
                      SizedBox(width: 1.w),
                      Text("NEWS AND BLOG", style: TextStyle(fontSize: 3.5.sp))
                    ],
                  )),
                ]),
          ),
          Flexible(
              fit: FlexFit.loose,
              child: TabBarView(
                  viewportFraction: 9,
                  controller: tabController,
                  children: [
                    Container(
                      height: screenSinzing.height,
                      width: screenSinzing.width,
                      color: mainGreenColor,
                      child: AllSlotsAll(),
                    ),
                    Container(
                      height: screenSinzing.height,
                      width: screenSinzing.width,
                      color: yellowColor,
                    ),
                    Container(
                      height: screenSinzing.height,
                      width: screenSinzing.width,
                      color: cyanColor,
                    ),
                    Container(
                      height: screenSinzing.height,
                      width: screenSinzing.width,
                      color: orangeColor,
                    ),
                    Container(
                      height: screenSinzing.height,
                      width: screenSinzing.width,
                      color: mainGreenColor,
                    ),
                    Container(
                      height: screenSinzing.height,
                      width: screenSinzing.width,
                      color: cyanColor,
                    ),
                    Container(
                      height: screenSinzing.height,
                      width: screenSinzing.width,
                      color: yellowColor,
                    ),
                    Container(
                      height: screenSinzing.height,
                      width: screenSinzing.width,
                      color: orangeColor,
                    ),
                    Container(
                      height: screenSinzing.height,
                      width: screenSinzing.width,
                      color: mainGreenColor,
                    ),
                  ])),
        ]),
      ),
    );
  }
}
