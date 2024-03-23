/*  ==========================================
      Rsponsive sign up for mobile screen  
   ====================================== */

import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/widgets/responsive_appbar.dart';
import 'package:brb_100x/widgets/text_signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveForTabletNMobileSignUp extends StatelessWidget {
  const ResponsiveForTabletNMobileSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final TextEditingController _textEditingController =
        TextEditingController();
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const ResponsiveAppBar(),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            kSizeBoxTen,
            Padding(
              padding: EdgeInsets.only(left: 160.w, right: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
                    decoration: BoxDecoration(
                        color: mainGreenColor,
                        borderRadius: BorderRadius.all(Radius.circular(6.r))),
                    child: Icon(Icons.person_add_alt_1,
                        color: whiteColor, size: 25.sp),
                  ),
                  SizedBox(width: 05.w),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
                    decoration: BoxDecoration(
                        color: mainGreenColor,
                        borderRadius: BorderRadius.all(Radius.circular(6.r))),
                    child: Icon(Icons.login, color: whiteColor, size: 25.sp),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              margin: EdgeInsets.symmetric(vertical: 10.h),
              width: screenSize.width,
              decoration: const BoxDecoration(color: mainGreenColor),
              child: Center(
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: screenSize.width,
              decoration: const BoxDecoration(color: dark),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Account Information",
                    style: TextStyle(color: whiteColor, fontSize: 18.sp),
                  ),
                  Icon(Icons.arrow_forward_rounded,
                      color: whiteColor, size: 18.sp),
                ],
              ),
            ),
            kSizeBoxTen,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("USERNAME", style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    TextSigUpFormfieldForAll(
                        textEditingController: _textEditingController),
                    kSizeBoxTwenty,
                    const Text("Email", style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    TextSigUpFormfieldForAll(
                        textEditingController: _textEditingController),
                    kSizeBoxTwenty,
                    const Text("PASSWORD", style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    TextSigUpFormfieldForAllPassword(
                        textEditingController: _textEditingController),
                    kSizeBoxTwenty,
                    const Text("CONFIRM PASSWORD",
                        style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    TextSigUpFormfieldForAllPassword(
                        textEditingController: _textEditingController),
                    kSizeBoxTwenty,
                    const Text("CURRENCY", style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    DropdownButtonFormField(
                      items: const [],
                      decoration: InputDecoration(
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
                      onChanged: (value) {},
                    ),
                    kSizeBoxTwenty,
                    const Text("DATE OF BIRTH",
                        style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TextSigUpFormfieldForAll(
                              textEditingController: _textEditingController),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TextSigUpFormfieldForAll(
                              textEditingController: _textEditingController),
                        )),
                        Expanded(
                            child: TextSigUpFormfieldForAll(
                                textEditingController: _textEditingController)),
                      ],
                    ),
                    kSizeBoxTwenty,
                    Container(
                      width: screenSize.width,
                      decoration: const BoxDecoration(color: dark),
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Additional Information",
                            style:
                                TextStyle(color: whiteColor, fontSize: 18.sp),
                          ),
                          Icon(Icons.arrow_forward,
                              color: whiteColor, size: 18.sp),
                        ],
                      ),
                    ),
                    kSizeBoxTen,
                    const Text("FIRST NAME",
                        style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    TextSigUpFormfieldForAll(
                        textEditingController: _textEditingController),
                    kSizeBoxTwenty,
                    const Text("LAST NAME",
                        style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    TextSigUpFormfieldForAll(
                        textEditingController: _textEditingController),
                    kSizeBoxTwenty,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: const Text("Male",
                                style: TextStyle(color: whiteColor)),
                            value: "",
                            groupValue: false,
                            onChanged: (value) {},
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: const Text("Female",
                                style: TextStyle(color: whiteColor)),
                            value: const [],
                            groupValue: false,
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                    kSizeBoxTwenty,
                    const Text("COUNTRY", style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    DropdownButtonFormField(
                      items: const [],
                      decoration: InputDecoration(
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
                      onChanged: (value) {},
                    ),
                    kSizeBoxTwenty,
                    const Text("LANUAGE", style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    DropdownButtonFormField(
                      items: const [],
                      decoration: InputDecoration(
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
                      onChanged: (value) {},
                    ),
                    kSizeBoxTwenty,
                    const Text("ADDRESS", style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    TextSigUpFormfieldForAll(
                        textEditingController: _textEditingController),
                    kSizeBoxTwenty,
                    const Text("CITY", style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    TextSigUpFormfieldForAll(
                        textEditingController: _textEditingController),
                    kSizeBoxTwenty,
                    const Text("ZIP CODE", style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    TextSigUpFormfieldForAll(
                        textEditingController: _textEditingController),
                    kSizeBoxTwenty,
                    const Text("PHONE NUMBER",
                        style: TextStyle(color: whiteColor)),
                    kSizeBoxTen,
                    TextSigUpFormfieldForAll(
                        textEditingController: _textEditingController),
                    kSizeBoxThirty,
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
                              style: TextStyle(color: mainGreenColor),
                            )),
                        kSizeBoxFive,
                        Checkbox(
                          activeColor: mainGreenColor,
                          checkColor: mainGreenColor,
                          focusColor: mainGreenColor,
                          shape: ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.r))),
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
                        textEditingController: _textEditingController),
                    kSizeBoxTwenty,
                    SizedBox(
                      height: 60.h,
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(mainGreenColor),
                            shape: MaterialStatePropertyAll(
                                ContinuousRectangleBorder(
                                    side: BorderSide.none))),
                        icon: const Icon(Icons.login, color: whiteColor),
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
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
