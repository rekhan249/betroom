// ignore_for_file: deprecated_member_use

import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/widgets/email_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/* Responsive layout for web only */
class ResponsiveForWeb extends StatelessWidget {
  const ResponsiveForWeb({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    var userNameController = TextEditingController();
    var passwordController = TextEditingController();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      height: screenSize.height,
      width: screenSize.width,
      color: dark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kSizeBoxTwenty,
          Center(
            child: Container(
              margin: const EdgeInsets.all(05),
              child: SvgPicture.asset(
                "assets/images/logo_horizontal.svg",
                color: whiteColor,
              ),
            ),
          ),
          kSizeBoxTwenty,
          const Text(
            "USERNAME *",
            style: TextStyle(color: whiteColor),
          ),
          kSizeBoxTen,
          Container(
            decoration: BoxDecoration(
                color: dark,
                border: Border.all(color: whiteColor.withOpacity(0.4)),
                borderRadius: BorderRadius.all(Radius.circular(5.r))),
            child: TextFormField(
              controller: userNameController,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 5.w),
                  border:
                      const UnderlineInputBorder(borderSide: BorderSide.none),
                  disabledBorder:
                      const UnderlineInputBorder(borderSide: BorderSide.none)),
            ),
          ),
          kSizeBoxFifteen,
          const Text(
            "PASSWORD *",
            style: TextStyle(color: whiteColor),
          ),
          kSizeBoxTen,
          Container(
            decoration: BoxDecoration(
                color: dark,
                border: Border.all(color: whiteColor.withOpacity(0.4)),
                borderRadius: BorderRadius.all(Radius.circular(5.r))),
            child: PasswordTextFormfieldLogin(
                passwordController: passwordController),
          ),
          kSizeBoxTwenty,
          SizedBox(
            height: 60.h,
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(mainGreenColor),
                  shape: MaterialStatePropertyAll(
                      ContinuousRectangleBorder(side: BorderSide.none))),
              icon: const Icon(Icons.login, color: whiteColor),
              label: const Text(
                "Login In",
                style: TextStyle(color: whiteColor),
              ),
            ),
          ),
          kSizeBoxTen,
          TextButton(
              onPressed: () {},
              child: const Text("Forget password?",
                  style: TextStyle(
                      color: whiteColor, fontWeight: FontWeight.w200)))
        ],
      ),
    );
  }
}

/* Responsive layout for tablet and mobile phone */
class ResponsiveForTabletNMobile extends StatelessWidget {
  const ResponsiveForTabletNMobile({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    var userNameController = TextEditingController();
    var passwordController = TextEditingController();

    return Container(
      margin: const EdgeInsets.all(08),
      padding: EdgeInsets.symmetric(horizontal: 05.w),
      height: screenSize.height,
      width: screenSize.width,
      color: dark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kSizeBoxTwenty,
          Center(
            child: Container(
              margin: const EdgeInsets.all(05),
              child: SvgPicture.asset("assets/images/logo_horizontal.svg",
                  color: whiteColor),
            ),
          ),
          kSizeBoxTwenty,
          const Text(
            "USERNAME *",
            style: TextStyle(color: whiteColor),
          ),
          kSizeBoxTen,
          Container(
            decoration: BoxDecoration(
                color: dark,
                border: Border.all(color: whiteColor.withOpacity(0.4)),
                borderRadius: BorderRadius.all(Radius.circular(5.r))),
            child: TextFormField(
              controller: userNameController,
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.person_pin, color: whiteColor),
                  contentPadding: EdgeInsets.only(left: 5.w),
                  border:
                      const UnderlineInputBorder(borderSide: BorderSide.none),
                  disabledBorder:
                      const UnderlineInputBorder(borderSide: BorderSide.none)),
            ),
          ),
          kSizeBoxFifteen,
          const Text(
            "PASSWORD *",
            style: TextStyle(color: whiteColor),
          ),
          kSizeBoxTen,
          Container(
            decoration: BoxDecoration(
                color: dark,
                border: Border.all(color: whiteColor.withOpacity(0.4)),
                borderRadius: BorderRadius.all(Radius.circular(5.r))),
            child: PasswordTextFormfieldLogin(
                passwordController: passwordController),
          ),
          kSizeBoxTwenty,
          SizedBox(
            height: 50.h,
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(mainGreenColor),
                  shape: MaterialStatePropertyAll(
                      ContinuousRectangleBorder(side: BorderSide.none))),
              icon: const Icon(Icons.login, color: whiteColor),
              label: const Text(
                "Login In",
                style: TextStyle(color: whiteColor),
              ),
            ),
          ),
          kSizeBoxTen,
          TextButton(
              onPressed: () {},
              child: const Text("Forget password?",
                  style: TextStyle(
                      color: whiteColor, fontWeight: FontWeight.w200)))
        ],
      ),
    );
  }
}
