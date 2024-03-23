import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/home_page_responsive/customiz_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SlotPage extends StatefulWidget {
  const SlotPage({super.key});

  @override
  State<SlotPage> createState() => _SlotPageState();
}

class _SlotPageState extends State<SlotPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return const ResponsiveSlotForWeb();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const ResponsiveSlotForTablet();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return const ResponsiveSlotForMobile();
        }
        return const ResponsiveSlotForWeb();
      },
    );
  }
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
           Slot responsive for web portal
   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

class ResponsiveSlotForWeb extends StatefulWidget {
  const ResponsiveSlotForWeb({super.key});

  @override
  State<ResponsiveSlotForWeb> createState() => _ResponsiveSlotForWebState();
}

class _ResponsiveSlotForWebState extends State<ResponsiveSlotForWeb>
    with TickerProviderStateMixin {
  // ignore: prefer_typing_uninitialized_variables
  var tabController;

  @override
  void initState() {
    tabController = TabController(length: 13, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text("TOP GAMES",
                  style: TextStyle(
                      color: mainGreenColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 6.sp)),
            ),
            // ComtomizWiget(screensize: screensize),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: const ComtomizWigetStack(),
            ),

            SlotTabsCustomize(tabController: tabController),
          ],
        ),
      ),
    );
  }
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
           Slot responsive for Tablet portal
   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

class ResponsiveSlotForTablet extends StatelessWidget {
  const ResponsiveSlotForTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
           Slot responsive for Mobile portal
   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

class ResponsiveSlotForMobile extends StatefulWidget {
  const ResponsiveSlotForMobile({super.key});

  @override
  State<ResponsiveSlotForMobile> createState() =>
      _ResponsiveSlotForMobileState();
}

class _ResponsiveSlotForMobileState extends State<ResponsiveSlotForMobile>
    with TickerProviderStateMixin {
  // ignore: prefer_typing_uninitialized_variables
  var tabController;

  @override
  void initState() {
    tabController = TabController(length: 13, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5),
              child: Text("TOP GAMES",
                  style: TextStyle(
                      color: mainGreenColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp)),
            ),
            // ComtomizWiget(screensize: screensize),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: const ComtomizWigetStack(),
            ),

            SlotTabsCustomize(tabController: tabController),
          ],
        ),
      ),
    );
  }
}
