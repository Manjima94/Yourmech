// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';

class Button {
  static ElevatedButton elevatedButton({
    required String text,
    required VoidCallback onPressed,
    Color backgroundColor = Mycolor.button,
    Color textColor = Mycolor.maincolor,
    double borderRadius = 20,
  }) {
    return ElevatedButton(
      style: ButtonStyle(
        shadowColor: WidgetStatePropertyAll(Mycolor.maincolor),
        elevation: WidgetStatePropertyAll(5),
        fixedSize: WidgetStatePropertyAll(
            Size(ScreenUtil().setWidth(280), ScreenUtil().setHeight(45))),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: textColor,
            fontFamily: 'Poppins',
            fontSize: 22.spMin,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
