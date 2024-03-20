// ignore_for_file: no_leading_underscores_for_local_identifiers, deprecated_member_use

import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/auths/signin.dart';
import 'package:brb_100x/views/auths/signup.dart';
import 'package:brb_100x/widgets/signupin_elevated.dart';
import 'package:brb_100x/widgets/text_signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*  ==========================================
      Rsponsive sign up for mobile screen  
   ====================================== */

class ResponsiveForWebSignUp extends StatelessWidget {
  final Size screenSize;
  const ResponsiveForWebSignUp({super.key, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    final _textEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: dark,
        leading: Container(
            height: screenSize.height,
            margin: EdgeInsets.only(left: 10.w),
            decoration: const BoxDecoration(),
            child: SvgPicture.asset("assets/images/logo_horizontal.svg",
                height: screenSize.height, color: whiteColor)),
        actions: [
          Container(
            height: screenSize.height,
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
        ],
      ),
      body: Container(
          decoration: const BoxDecoration(color: dark),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kSizeBoxTen,
                  Container(
                    padding: EdgeInsets.only(left: 40.w),
                    height: screenSize.height * 0.050,
                    width: screenSize.width,
                    decoration: const BoxDecoration(),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: SizedBox(
                              height: screenSize.height * 0.1,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.ac_unit_outlined,
                                    color: whiteColor,
                                    size: 4.sp,
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    "SLOTS",
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 4.sp,
                                    ),
                                  )
                                ],
                              )),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    width: screenSize.width,
                    decoration: const BoxDecoration(color: mainGreenColor),
                    child: Center(
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  kSizeBoxTen,
                  Container(
                    decoration: const BoxDecoration(color: dark),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/register_step.png"),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 18),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text("USERNAME",
                                                  style: TextStyle(
                                                      color: whiteColor)),
                                              kSizeBoxTen,
                                              TextSigUpFormfieldForAll(
                                                  textEditingController:
                                                      _textEditingController),
                                            ]),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text("Email",
                                                  style: TextStyle(
                                                      color: whiteColor)),
                                              kSizeBoxTen,
                                              TextSigUpFormfieldForAll(
                                                  textEditingController:
                                                      _textEditingController),
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                                kSizeBoxTwenty,
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text("PASSWORD",
                                                  style: TextStyle(
                                                      color: whiteColor)),
                                              kSizeBoxTen,
                                              TextSigUpFormfieldForAllPassword(
                                                  textEditingController:
                                                      _textEditingController),
                                            ]),
                                      ),
                                    ),
                                    kSizeBoxFifteen,
                                    Expanded(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text("CONFIRM PASSWORD",
                                                style: TextStyle(
                                                    color: whiteColor)),
                                            kSizeBoxTen,
                                            TextSigUpFormfieldForAllPassword(
                                                textEditingController:
                                                    _textEditingController),
                                          ]),
                                    ),
                                  ],
                                ),
                                kSizeBoxTwenty,
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text("CURRENCY",
                                                  style: TextStyle(
                                                      color: whiteColor)),
                                              kSizeBoxTen,
                                              DropdownButtonFormField(
                                                items: const [],
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.r)),
                                                        borderSide:
                                                            const BorderSide(
                                                                color:
                                                                    whiteColor)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(10.r)),
                                                        borderSide: const BorderSide(color: mainGreenColor)),
                                                    errorBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.r)), borderSide: const BorderSide(color: Colors.red)),
                                                    border: const UnderlineInputBorder(borderSide: BorderSide.none),
                                                    disabledBorder: const UnderlineInputBorder(borderSide: BorderSide.none)),
                                                onChanged: (value) {},
                                              ),
                                            ]),
                                      ),
                                    ),
                                    kSizeBoxFifteen,
                                    Expanded(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text("DATE OF BIRTH",
                                                style: TextStyle(
                                                    color: whiteColor)),
                                            kSizeBoxTen,
                                            Row(
                                              children: [
                                                Expanded(
                                                    child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: TextSigUpFormfieldForAll(
                                                      textEditingController:
                                                          _textEditingController),
                                                )),
                                                Expanded(
                                                    child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: TextSigUpFormfieldForAll(
                                                      textEditingController:
                                                          _textEditingController),
                                                )),
                                                Expanded(
                                                    child: TextSigUpFormfieldForAll(
                                                        textEditingController:
                                                            _textEditingController)),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ))
                        ]),
                  ),
                  Container(
                    width: screenSize.width,
                    decoration: const BoxDecoration(color: dark),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
                    child: Row(
                      children: [
                        Text(
                          "Account Information",
                          style: TextStyle(color: whiteColor, fontSize: 8.sp),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: whiteColor,
                          size: 8.sp,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text("FIRST NAME",
                                                  style: TextStyle(
                                                      color: whiteColor)),
                                              kSizeBoxTen,
                                              TextSigUpFormfieldForAll(
                                                  textEditingController:
                                                      _textEditingController),
                                            ]),
                                      ),
                                    ),
                                    kSizeBoxFifteen,
                                    Expanded(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text("LAST NAME",
                                                style: TextStyle(
                                                    color: whiteColor)),
                                            kSizeBoxTen,
                                            TextSigUpFormfieldForAll(
                                                textEditingController:
                                                    _textEditingController),
                                          ]),
                                    ),
                                  ],
                                ),
                                kSizeBoxTwenty,
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Expanded(
                                              child: RadioListTile(
                                                title: const Text("Male",
                                                    style: TextStyle(
                                                        color: whiteColor)),
                                                value: "",
                                                groupValue: false,
                                                onChanged: (value) {},
                                              ),
                                            ),
                                            Expanded(
                                              child: RadioListTile(
                                                title: const Text("Female",
                                                    style: TextStyle(
                                                        color: whiteColor)),
                                                value: const [],
                                                groupValue: false,
                                                onChanged: (value) {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text("COUNTRY",
                                                style: TextStyle(
                                                    color: whiteColor)),
                                            kSizeBoxTen,
                                            DropdownButtonFormField(
                                              items: const [],
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets.all(10),
                                                  enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.all(
                                                          Radius.circular(
                                                              10.r)),
                                                      borderSide: const BorderSide(
                                                          color: whiteColor)),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10.r)),
                                                      borderSide: const BorderSide(
                                                          color: mainGreenColor)),
                                                  errorBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.r)), borderSide: const BorderSide(color: Colors.red)),
                                                  border: const UnderlineInputBorder(borderSide: BorderSide.none),
                                                  disabledBorder: const UnderlineInputBorder(borderSide: BorderSide.none)),
                                              onChanged: (value) {},
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                                kSizeBoxTwenty,
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text("LANUAGE",
                                                  style: TextStyle(
                                                      color: whiteColor)),
                                              kSizeBoxTen,
                                              DropdownButtonFormField(
                                                items: const [],
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.r)),
                                                        borderSide:
                                                            const BorderSide(
                                                                color:
                                                                    whiteColor)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(10.r)),
                                                        borderSide: const BorderSide(color: mainGreenColor)),
                                                    errorBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.r)), borderSide: const BorderSide(color: Colors.red)),
                                                    border: const UnderlineInputBorder(borderSide: BorderSide.none),
                                                    disabledBorder: const UnderlineInputBorder(borderSide: BorderSide.none)),
                                                onChanged: (value) {},
                                              ),
                                            ]),
                                      ),
                                    ),
                                    kSizeBoxFifteen,
                                    Expanded(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text("ADDRESS",
                                                style: TextStyle(
                                                    color: whiteColor)),
                                            kSizeBoxTen,
                                            TextSigUpFormfieldForAll(
                                                textEditingController:
                                                    _textEditingController),
                                          ]),
                                    ),
                                  ],
                                ),
                                kSizeBoxTwenty,
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text("CITY",
                                                  style: TextStyle(
                                                      color: whiteColor)),
                                              kSizeBoxTen,
                                              TextSigUpFormfieldForAll(
                                                  textEditingController:
                                                      _textEditingController),
                                            ]),
                                      ),
                                    ),
                                    kSizeBoxFifteen,
                                    Expanded(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text("ZIP CODE",
                                                style: TextStyle(
                                                    color: whiteColor)),
                                            kSizeBoxTen,
                                            TextSigUpFormfieldForAll(
                                                textEditingController:
                                                    _textEditingController),
                                          ]),
                                    ),
                                  ],
                                ),
                                kSizeBoxTwenty,
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("PHONE NUMBER",
                                          style: TextStyle(color: whiteColor)),
                                      kSizeBoxTen,
                                      TextSigUpFormfieldForAll(
                                          textEditingController:
                                              _textEditingController),
                                    ]),
                              ],
                            )),
                            Image.asset("assets/images/register_step2.png"),
                          ]),
                    ),
                  ),
                  Container(
                    width: screenSize.width,
                    decoration: const BoxDecoration(color: Colors.black),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_back, color: whiteColor, size: 8.sp),
                        Text(
                          "Additional Information",
                          style: TextStyle(color: whiteColor, fontSize: 8.sp),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 30.w),
                      decoration: const BoxDecoration(),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(children: [
                              Image.asset("assets/images/register_step3.png"),
                              Container(
                                width: screenSize.width,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 30.h),
                                child: Row(
                                  children: [
                                    Icon(Icons.arrow_forward,
                                        color: whiteColor, size: 8.sp),
                                    Text(
                                      "Confirm Information",
                                      style: TextStyle(
                                          color: whiteColor, fontSize: 8.sp),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                          Expanded(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Row(
                                  children: [
                                    const Text(
                                      "ACCEPT",
                                      style: TextStyle(color: whiteColor),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "TERMS AND CONDITIONS",
                                          style:
                                              TextStyle(color: mainGreenColor),
                                        )),
                                    kSizeBoxFive,
                                    Checkbox(
                                      activeColor: mainGreenColor,
                                      checkColor: mainGreenColor,
                                      focusColor: mainGreenColor,
                                      shape: ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.r))),
                                      value: true,
                                      onChanged: (value) {},
                                    ),
                                  ],
                                ),
                                kSizeBoxTwenty,
                                const Text("INSERT CAPTCHA CODE",
                                    style: TextStyle(color: whiteColor)),
                                const Text("click on image to reload captcha",
                                    style: TextStyle(color: whiteColor)),
                                kSizeBoxTwenty,
                                TextSigUpFormfieldForAll(
                                    textEditingController:
                                        _textEditingController),
                                kSizeBoxTwenty,
                                SizedBox(
                                  height: 60.h,
                                  width: double.infinity,
                                  child: ElevatedButton.icon(
                                    onPressed: () {},
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                mainGreenColor),
                                        shape: MaterialStatePropertyAll(
                                            ContinuousRectangleBorder(
                                                side: BorderSide.none))),
                                    icon: const Icon(Icons.login,
                                        color: whiteColor),
                                    label: const Text(
                                      "Register",
                                      style: TextStyle(color: whiteColor),
                                    ),
                                  ),
                                ),
                                kSizeBoxTwenty,
                                const Text(
                                    "If you do not receive the confirmation email within seconds, please check your Spam/Junk email folder.In this case please mark all emails received by @Betroom24 as normal and move it to INBOX.",
                                    style: TextStyle(color: whiteColor)),
                              ])),
                        ],
                      )),
                ]),
          )),
    );
  }
}

/*  ==========================================
      Rsponsive sign up for mobile screen  
   ====================================== */

class ResponsiveForTabletNMobileSignUp extends StatelessWidget {
  final Size screenSize;
  const ResponsiveForTabletNMobileSignUp({super.key, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _textEditingController =
        TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          decoration: const BoxDecoration(),
          child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.h),
              width: screenSize.width,
              decoration: const BoxDecoration(color: mainGreenColor),
              child: Center(
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(children: [
              Image.asset("assets/images/register_step.png"),
              Expanded(
                child: Column(children: [
                  const Text("USERNAME", style: TextStyle(color: whiteColor)),
                  kSizeBoxTen,
                  TextSigUpFormfieldForAll(
                      textEditingController: _textEditingController),
                ]),
              )
            ]),
          ])),
    );
  }
}
