import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/auths/signin.dart';
import 'package:brb_100x/views/auths/signup.dart';
import 'package:brb_100x/widgets/signupin_elevated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const ResponsiveAppBar(
      {super.key, this.preferredSize = const Size.fromHeight(56)});

  @override
  Widget build(Object context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return AppBar(
              backgroundColor: dark,
              leading: Container(
                  height: preferredSize.height,
                  margin: EdgeInsets.only(left: 10.w),
                  decoration: const BoxDecoration(),
                  child: SvgPicture.asset("assets/images/logo.svg",
                      // ignore: deprecated_member_use
                      color: whiteColor)),
              actions: [
                Container(
                  height: preferredSize.height,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Row(
                    children: [
                      DropdownButton(items: const [], onChanged: (value) {}),
                      SizedBox(width: 05.w),
                      SigUpSignInElevatedMain(
                        icon: Icons.person_add_alt_1,
                        colorValue: whiteColor,
                        textData: 'Sign Up',
                        fontValue: 4.sp,
                        background: mainGreenColor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        iconsize: 4.sp,
                      ),
                      SizedBox(width: 05.w),
                      SigUpSignInElevatedMain(
                        icon: Icons.login,
                        colorValue: whiteColor,
                        textData: 'Sign In',
                        fontValue: 4.sp,
                        background: mainGreenColor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()));
                        },
                        iconsize: 4.sp,
                      ),
                      SizedBox(width: 05.w),
                    ],
                  ),
                ),
              ]);
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return AppBar(
              backgroundColor: dark,
              leading: Container(
                  height: preferredSize.height,
                  margin: EdgeInsets.only(left: 10.w),
                  decoration: const BoxDecoration(),
                  child: SvgPicture.asset("assets/images/logo.svg",
                      // ignore: deprecated_member_use
                      color: whiteColor)),
              actions: [
                Container(
                  height: preferredSize.height,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Row(
                    children: [
                      DropdownButton(items: const [], onChanged: (value) {}),
                      SizedBox(width: 05.w),
                      SigUpSignInElevatedMain(
                        icon: Icons.person_add_alt_1,
                        colorValue: whiteColor,
                        textData: 'Sign Up',
                        fontValue: 4.sp,
                        background: mainGreenColor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        iconsize: 4.sp,
                      ),
                      SizedBox(width: 05.w),
                      SigUpSignInElevatedMain(
                        icon: Icons.login,
                        colorValue: whiteColor,
                        textData: 'Sign In',
                        fontValue: 4.sp,
                        background: mainGreenColor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()));
                        },
                        iconsize: 4.sp,
                      ),
                      SizedBox(width: 05.w),
                    ],
                  ),
                ),
              ]);
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return AppBar(
              backgroundColor: dark,
              leading: Container(
                  margin: EdgeInsets.only(left: 10.w),
                  decoration: const BoxDecoration(),
                  child: SvgPicture.asset("assets/images/logo.svg",

                      // ignore: deprecated_member_use
                      color: whiteColor)),
             );
        }

        return AppBar(
            backgroundColor: dark,
            leading: Container(
                height: preferredSize.height,
                margin: EdgeInsets.only(left: 10.w),
                decoration: const BoxDecoration(),
                child: SvgPicture.asset("assets/images/logo.svg",
                    // ignore: deprecated_member_use
                    height: preferredSize.height,
                    // ignore: deprecated_member_use
                    color: whiteColor)),
            actions: [
              Container(
                height: preferredSize.height,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Row(
                  children: [
                    DropdownButton(items: const [], onChanged: (value) {}),
                    SizedBox(width: 05.w),
                    SigUpSignInElevatedMain(
                      icon: Icons.person_add_alt_1,
                      colorValue: whiteColor,
                      textData: 'Sign Up',
                      fontValue: 4.sp,
                      background: mainGreenColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      iconsize: 4.sp,
                    ),
                    SizedBox(width: 05.w),
                    SigUpSignInElevatedMain(
                      icon: Icons.login,
                      colorValue: whiteColor,
                      textData: 'Sign In',
                      fontValue: 4.sp,
                      background: mainGreenColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()));
                      },
                      iconsize: 4.sp,
                    ),
                    SizedBox(width: 05.w),
                  ],
                ),
              ),
            ]);
      },
    );
  }
}
