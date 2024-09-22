// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final Widget? prefixIcon;
  final Color fillcolor;
  final Color hintTextColor;

  CustomTextFormField({
    Key? key,
    this.prefixIcon,
    this.hintTextColor = const Color(0xFF371673),
    required String? Function(dynamic value) validator,
    required this.fillcolor,
    required this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().setWidth(300),
      height: ScreenUtil().setHeight(55),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.r)),
          filled: true,
          contentPadding: EdgeInsets.all(20.r),
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
              color: hintTextColor,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
