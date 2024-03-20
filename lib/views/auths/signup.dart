import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/auths/responsiveness/signup_responsive.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType ==
                DeviceScreenType.desktop) {
              return Container(
                height: screenSize.height,
                width: screenSize.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/login.jpg"),
                        fit: BoxFit.cover)),
                child: ResponsiveForWebSignUp(screenSize: screenSize),
              );
            }
            if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
              return Container(
                height: screenSize.height,
                width: screenSize.width,
                decoration: const BoxDecoration(color: dark),
                child: ResponsiveForTabletNMobileSignUp(screenSize: screenSize),
              );
            }
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return Container(
                height: screenSize.height,
                width: screenSize.width,
                decoration: const BoxDecoration(color: dark),
                child: ResponsiveForTabletNMobileSignUp(screenSize: screenSize),
              );
            }
            return Container(
              height: screenSize.height,
              width: screenSize.width,
              decoration: const BoxDecoration(),
              child: ResponsiveForWebSignUp(screenSize: screenSize),
            );
          },
        ));
  }
}
