import 'package:brb_100x/utils/constants.dart';
import 'package:brb_100x/views/auths/responsiveness/signup_responsive_mob.dart';
import 'package:brb_100x/views/auths/responsiveness/signup_responsive_web.dart';
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
                decoration: const BoxDecoration(),
                child: const ResponsiveForWebSignUp(),
              );
            }
            // if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            //   return Container(
            //     height: screenSize.height,
            //     width: screenSize.width,
            //     decoration: const BoxDecoration(color: dark),
            //     child: const ResponsiveForTabletNMobileSignUp(),
            //   );
            // }
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return Container(
                height: screenSize.height,
                width: screenSize.width,
                decoration: const BoxDecoration(color: dark),
                child: const ResponsiveForTabletNMobileSignUp(),
              );
            }
            return Container(
              height: screenSize.height,
              width: screenSize.width,
              decoration: const BoxDecoration(),
              child: const ResponsiveForWebSignUp(),
            );
          },
        ));
  }
}
