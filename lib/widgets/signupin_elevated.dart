import 'package:brb_100x/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigUpSignInElevated extends StatelessWidget {
  final IconData icon;
  final Color colorValue, background;
  final String textData;
  final double fontValue;
  final double iconsize;
  final VoidCallback onPressed;
  const SigUpSignInElevated(
      {super.key,
      required this.icon,
      required this.colorValue,
      required this.textData,
      required this.fontValue,
      required this.background,
      required this.onPressed,
      required this.iconsize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(05),
      child: ElevatedButton.icon(
          style: ButtonStyle(
              elevation: const MaterialStatePropertyAll(0),
              shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)))),
              backgroundColor: MaterialStatePropertyAll(background)),
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: colorValue,
            size: iconsize,
          ),
          label: Text(
            textData,
            style: TextStyle(color: whiteColor, fontSize: fontValue),
          )),
    );
  }
}

class SigUpSignInElevatedMain extends StatelessWidget {
  final IconData icon;
  final Color colorValue, background;
  final String textData;
  final double fontValue;
  final double iconsize;
  final VoidCallback onPressed;
  const SigUpSignInElevatedMain(
      {super.key,
      required this.icon,
      required this.colorValue,
      required this.textData,
      required this.fontValue,
      required this.background,
      required this.onPressed,
      required this.iconsize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: ElevatedButton.icon(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)))),
              backgroundColor: MaterialStatePropertyAll(background)),
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: colorValue,
            size: iconsize,
          ),
          label: Text(
            textData,
            style: TextStyle(color: whiteColor, fontSize: fontValue),
          )),
    );
  }
}
