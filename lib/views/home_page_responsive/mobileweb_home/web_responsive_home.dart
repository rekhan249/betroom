import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/auths/responsiveness/responsive_drawer.dart';
import 'package:brb_100x/views/auths/signin.dart';
import 'package:brb_100x/views/auths/signup.dart';
import 'package:brb_100x/views/home_page_responsive/menu_main.dart/promotion_screen.dart';
import 'package:brb_100x/views/home_page_responsive/menu_main.dart/vip_program.dart';
import 'package:brb_100x/views/home_page_responsive/slot_page.dart';
import 'package:brb_100x/widgets/custom_promo_news.dart';
import 'package:brb_100x/widgets/responsive_appbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageForWeb extends StatefulWidget {
  const HomePageForWeb({super.key});

  @override
  State<HomePageForWeb> createState() => _HomePageForWebState();
}

class _HomePageForWebState extends State<HomePageForWeb>
    with TickerProviderStateMixin {
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
                  viewportFraction: 1,
                  controller: tabController,
                  children: const [
                    // AllSlotsAll(),
                    SlotPage(),
                    SlotPage(),
                    SlotPage(),
                    SlotPage(),
                    SlotPage(),
                    SlotPage(),
                    PromotionSceen(),
                    VipProgram(),
                    WhatsCustomWhatsNew()
                  ])),
        ]),
      ),
    );
  }
}

/// ********************************************* ///
/*  Here Responsive homepage for mobile view   */
/// ******************************************** ///

class HomePageForMobile extends StatefulWidget {
  const HomePageForMobile({super.key});

  @override
  State<HomePageForMobile> createState() => _HomePageForMobileState();
}

class _HomePageForMobileState extends State<HomePageForMobile>
    with TickerProviderStateMixin {
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
          Padding(
            padding: EdgeInsets.only(left: 160.w, right: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
                    decoration: BoxDecoration(
                        color: mainGreenColor,
                        borderRadius: BorderRadius.all(Radius.circular(6.r))),
                    child: Icon(Icons.person_add_alt_1,
                        color: whiteColor, size: 25.sp),
                  ),
                ),
                SizedBox(width: 05.w),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
                    decoration: BoxDecoration(
                        color: mainGreenColor,
                        borderRadius: BorderRadius.all(Radius.circular(6.r))),
                    child: Icon(Icons.login, color: whiteColor, size: 25.sp),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: dark),
            child: TabBar(
                dividerHeight: 0,
                labelColor: whiteColor,
                dragStartBehavior: DragStartBehavior.start,
                unselectedLabelColor: whiteColor,
                labelPadding: const EdgeInsets.only(left: 0, right: 7),
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
                          color: whiteColor, size: 16.sp),
                      SizedBox(width: 2.w),
                      const Text("SLOTS")
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 16.sp),
                      SizedBox(width: 2.w),
                      const Text("LIVE CASINO")
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 16.sp),
                      SizedBox(width: 2.w),
                      const Text("CRASH & FAST")
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 16.sp),
                      SizedBox(width: 2.w),
                      const Text("SPORTSBOOK")
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 16.sp),
                      SizedBox(width: 2.w),
                      const Text(" SPORTS/RACES")
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 16.sp),
                      SizedBox(width: 2.w),
                      const Text(" TOURNAMENTS")
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 16.sp),
                      SizedBox(width: 2.w),
                      const Text(" PROMOTIONS")
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 16.sp),
                      SizedBox(width: 2.w),
                      const Text("VIP PROGRAM")
                    ],
                  )),
                  Tab(
                      child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,
                          color: whiteColor, size: 16.sp),
                      SizedBox(width: 2.w),
                      const Text("NEWS AND BLOG")
                    ],
                  )),
                ]),
          ),
          Flexible(
              fit: FlexFit.loose,
              child: TabBarView(
                  dragStartBehavior: DragStartBehavior.start,
                  controller: tabController,
                  children: const [
                    // AllSlotsAll(),
                    SlotPage(),
                    SlotPage(),
                    SlotPage(),
                    SlotPage(),
                    SlotPage(),
                    SlotPage(),
                    PromotionSceen(),
                    VipProgram(),
                    WhatsCustomWhatsNew()
                  ])),
        ]),
      ),
    );
  }
}
