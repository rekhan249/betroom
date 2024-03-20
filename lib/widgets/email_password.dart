import 'package:brb_100x/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextFormfieldLogin extends StatelessWidget {
  const PasswordTextFormfieldLogin({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      decoration: InputDecoration(
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.key_sharp, color: whiteColor),
              kSizeBoxTen,
              const Icon(Icons.remove_red_eye, color: whiteColor)
            ],
          ),
          contentPadding: EdgeInsets.only(left: 5.w),
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
          disabledBorder:
              const UnderlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}

class EmailTextFormFieldLogin extends StatelessWidget {
  const EmailTextFormFieldLogin({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 5.w),
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
          disabledBorder:
              const UnderlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}

class ResponsiveTextForAll extends StatelessWidget {
  final double sizeValue;
  const ResponsiveTextForAll({
    super.key,
    required this.sizeValue,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome to Xaxino",
      style: TextStyle(
          color: whiteColor, fontSize: sizeValue, fontWeight: FontWeight.w800),
    );
  }
}
