import 'package:brb_100x/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextSigUpFormfieldForAll extends StatelessWidget {
  const TextSigUpFormfieldForAll({
    super.key,
    required TextEditingController textEditingController,
  }) : _textEditingController = textEditingController;

  final TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: whiteColor,
      controller: _textEditingController,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              borderSide: const BorderSide(color: whiteColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              borderSide: const BorderSide(color: mainGreenColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              borderSide: const BorderSide(color: Colors.red)),
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
          disabledBorder:
              const UnderlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}

class TextSigUpFormfieldForAllPassword extends StatelessWidget {
  const TextSigUpFormfieldForAllPassword({
    super.key,
    required TextEditingController textEditingController,
  }) : _textEditingController = textEditingController;

  final TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: whiteColor,
      controller: _textEditingController,
      decoration: InputDecoration(
          suffixIcon: const Icon(Icons.remove_red_eye, color: whiteColor),
          contentPadding: const EdgeInsets.all(10),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              borderSide: const BorderSide(color: whiteColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              borderSide: const BorderSide(color: mainGreenColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              borderSide: const BorderSide(color: Colors.red)),
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
          disabledBorder:
              const UnderlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}
