import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/auths/signup.dart';
import 'package:brb_100x/widgets/drawer_list.dart';
import 'package:brb_100x/widgets/signupin_elevated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveDrawer extends StatefulWidget {
  const ResponsiveDrawer({super.key});

  @override
  State<ResponsiveDrawer> createState() => _ResponsiveDrawerState();
}

class _ResponsiveDrawerState extends State<ResponsiveDrawer> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return const ResponsiveDrawerForWeb();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const ResponsiveDrawerForTablet();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return const ResponsiveDrawerForMobile();
        }
        return const ResponsiveDrawerForMobile();
      },
    );
  }
}

/* *************************************************
              Drawer for Mobile phone
   ************************************************* */

class ResponsiveDrawerForMobile extends StatelessWidget {
  const ResponsiveDrawerForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: const BoxDecoration(color: mainGreenColor),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SigUpSignInElevated(
                            icon: Icons.person_add_alt_1,
                            colorValue: whiteColor,
                            textData: 'Sign Up',
                            fontValue: 9.sp,
                            background: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen()));
                            },
                            iconsize: 9.sp,
                          ),
                          SizedBox(width: 05.w),
                          SigUpSignInElevated(
                            icon: Icons.login,
                            colorValue: whiteColor,
                            textData: 'Sign In',
                            fontValue: 9.sp,
                            background: mainGreenColor,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen()));
                            },
                            iconsize: 9.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'SLOTS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 9.sp,
                    iconSize: 14.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'LIVE CASINO',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 9.sp,
                    iconSize: 14.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'CRASH & FAST',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 9.sp,
                    iconSize: 14.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'SPORTSBOOKS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 9.sp,
                    iconSize: 14.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'SPORTS/RACES',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 9.sp,
                    iconSize: 14.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'TOURNAMENTS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 9.sp,
                    iconSize: 14.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'PROMOTIONS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 9.sp,
                    iconSize: 14.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'VIP PROGRAM',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 9.sp,
                    iconSize: 14.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'NEWS AND BLOG',
                    colorValue: Colors.black,
                    iconColorValue: mainGreenColor,
                    fontValue: 9.sp,
                    iconSize: 14.sp,
                  ),
                  kSizeBoxFive,
                  const Divider(color: whiteColor),
                  kSizeBoxFive,
                  ListOftextForDrawersMobile(
                      onPressed: () {},
                      textValue: 'Sports Terms',
                      colorValue: whiteColor),
                  ListOftextForDrawersMobile(
                      onPressed: () {},
                      textValue: 'Bonus Terms and Conditions',
                      colorValue: whiteColor),
                  ListOftextForDrawersMobile(
                      onPressed: () {},
                      textValue: 'How to Play',
                      colorValue: whiteColor),
                  ListOftextForDrawersMobile(
                      onPressed: () {},
                      textValue: 'Contact Us',
                      colorValue: whiteColor),
                  ListOftextForDrawersMobile(
                      onPressed: () {},
                      textValue: 'About Us',
                      colorValue: whiteColor),
                  ListOftextForDrawersMobile(
                      onPressed: () {},
                      textValue: 'Terms And Conditions',
                      colorValue: whiteColor),
                  ListOftextForDrawersMobile(
                      onPressed: () {},
                      textValue: 'Affiliates',
                      colorValue: whiteColor),
                  ListOftextForDrawersMobile(
                      onPressed: () {},
                      textValue: 'FAQ',
                      colorValue: whiteColor),
                  Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  )
                ]),
          )),
    );
  }
}

/* ===========================================
    drawer for web resposive based
  ============================================ */

class ResponsiveDrawerForWeb extends StatelessWidget {
  const ResponsiveDrawerForWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: const BoxDecoration(color: mainGreenColor),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SigUpSignInElevated(
                            icon: Icons.person_add_alt_1,
                            colorValue: whiteColor,
                            textData: 'Sign Up',
                            fontValue: 4.sp,
                            background: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen()));
                            },
                            iconsize: 4.sp,
                          ),
                          kSizeBoxFive,
                          SigUpSignInElevated(
                            icon: Icons.login,
                            colorValue: whiteColor,
                            textData: 'Sign In',
                            fontValue: 4.sp,
                            background: mainGreenColor,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen()));
                            },
                            iconsize: 4.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'SLOTS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'LIVE CASINO',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'CRASH & FAST',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'SPORTSBOOKS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'SPORTS/RACES',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'TOURNAMENTS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'PROMOTIONS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'VIP PROGRAM',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'NEWS AND BLOG',
                    colorValue: Colors.black,
                    iconColorValue: mainGreenColor,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  kSizeBoxFive,
                  const Divider(color: whiteColor),
                  kSizeBoxFive,
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'Sports Terms',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'Bonus Terms and Conditions',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'How to Play',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'Contact Us',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'About Us',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'Terms And Conditions',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'Affiliates',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'FAQ',
                      colorValue: whiteColor),
                  Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  )
                ]),
          )),
    );
  }
}

/* +++++++++++++++++++++++++++++++++++++++++++
             Drawer for tablet
   +++++++++++++++++++++++++++++++++++++++++++  */

class ResponsiveDrawerForTablet extends StatelessWidget {
  const ResponsiveDrawerForTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: const BoxDecoration(color: mainGreenColor),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SigUpSignInElevated(
                            icon: Icons.person_add_alt_1,
                            colorValue: whiteColor,
                            textData: 'Sign Up',
                            fontValue: 4.sp,
                            background: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen()));
                            },
                            iconsize: 4.sp,
                          ),
                          kSizeBoxFive,
                          SigUpSignInElevated(
                            icon: Icons.login,
                            colorValue: whiteColor,
                            textData: 'Sign In',
                            fontValue: 4.sp,
                            background: mainGreenColor,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen()));
                            },
                            iconsize: 4.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'SLOTS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'LIVE CASINO',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'CRASH & FAST',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'SPORTSBOOKS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'SPORTS/RACES',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'TOURNAMENTS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'PROMOTIONS',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'VIP PROGRAM',
                    colorValue: whiteColor,
                    iconColorValue: Colors.transparent,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  ListOfTextForDrawerListTiles(
                    onTap: () {},
                    textValue: 'NEWS AND BLOG',
                    colorValue: Colors.black,
                    iconColorValue: mainGreenColor,
                    fontValue: 4.sp,
                    iconSize: 7.sp,
                  ),
                  kSizeBoxFive,
                  const Divider(color: whiteColor),
                  kSizeBoxFive,
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'Sports Terms',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'Bonus Terms and Conditions',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'How to Play',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'Contact Us',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'About Us',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'Terms And Conditions',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'Affiliates',
                      colorValue: whiteColor),
                  ListOftextForDrawersWeb(
                      onPressed: () {},
                      textValue: 'FAQ',
                      colorValue: whiteColor),
                  Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  )
                ]),
          )),
    );
  }
}

///     TextButton List for web and mobile

class ListOftextForDrawersMobile extends StatelessWidget {
  final VoidCallback onPressed;
  final String textValue;
  final Color colorValue;

  const ListOftextForDrawersMobile(
      {super.key,
      required this.onPressed,
      required this.textValue,
      required this.colorValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(05),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            textValue,
            style: TextStyle(color: colorValue, fontSize: 8.sp),
          )),
    );
  }
}

class ListOftextForDrawersWeb extends StatelessWidget {
  final VoidCallback onPressed;
  final String textValue;
  final Color colorValue;

  const ListOftextForDrawersWeb(
      {super.key,
      required this.onPressed,
      required this.textValue,
      required this.colorValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14.w),
      margin: const EdgeInsets.all(05),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            textValue,
            style: TextStyle(color: colorValue, fontSize: 4.sp),
          )),
    );
  }
}
