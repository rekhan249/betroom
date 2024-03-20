import 'package:brb_100x/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfTextForDrawerListTiles extends StatelessWidget {
  final VoidCallback onTap;
  final String textValue;
  final Color colorValue;
  final Color iconColorValue;
  final double fontValue;
  final double iconSize;
  const ListOfTextForDrawerListTiles(
      {super.key,
      required this.onTap,
      required this.textValue,
      required this.colorValue,
      required this.iconColorValue,
      required this.fontValue, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 05.w),
      child: ListTile(
        onTap: onTap,
        leading: Container(
            decoration: BoxDecoration(
                color: iconColorValue,
                borderRadius: BorderRadius.all(Radius.circular(20.r))),
            child: Icon(
              Icons.ac_unit_outlined,
              color: colorValue,
              size: iconSize,
            )),
        title: Text(
          textValue,
          style: TextStyle(color: whiteColor, fontSize: fontValue),
        ),
      ),
    );
  }
}
