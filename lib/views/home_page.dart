import 'package:brb_100x/views/home_page_responsive/mobileweb_home/web_responsive_home.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveHomePage extends StatefulWidget {
  const ResponsiveHomePage({super.key});

  @override
  State<ResponsiveHomePage> createState() => _ResponsiveHomePageState();
}

class _ResponsiveHomePageState extends State<ResponsiveHomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return Container(
              decoration: const BoxDecoration(), child: const HomePageForWeb());
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return Container(
              decoration: const BoxDecoration(),
              child: const HomePageForMobile());
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Container(
              decoration: const BoxDecoration(),
              child: const HomePageForMobile());
        }
        return Container(
            decoration: const BoxDecoration(), child: const HomePageForWeb());
      },
    );
  }
}
