// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/auths/responsiveness/responsivefor.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(body: ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/login.jpg"),
                    fit: BoxFit.cover)),
            child: ResponsiveForWeb(screenSize: screenSize),
          );
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: const BoxDecoration(color: dark),
            child: ResponsiveForTabletNMobile(screenSize: screenSize),
          );
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: const BoxDecoration(color: dark),
            child: ResponsiveForTabletNMobile(screenSize: screenSize),
          );
        }
        return Container(
          height: screenSize.height,
          width: screenSize.width,
          decoration: const BoxDecoration(),
          child: ResponsiveForWeb(screenSize: screenSize),
        );
      },
    ));
  }
}
