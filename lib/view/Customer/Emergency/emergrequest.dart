// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_button.dart';
import 'package:yourmech/model/widget/custom_text.dart';

class EmergRequest extends StatefulWidget {
  const EmergRequest({super.key});

  @override
  State<EmergRequest> createState() => _EmergRequestState();
}

class _EmergRequestState extends State<EmergRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mycolor.background,
        appBar: AppBar(
          centerTitle: true,
          clipBehavior: Clip.hardEdge,
          backgroundColor: Mycolor.background,
          toolbarHeight: 40,
          flexibleSpace: ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                alignment: Alignment.center,
                height: ScreenUtil().setHeight(70),
                width: double.infinity,
              )),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 30.r, top: 20.r, right: 30.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText('Enter your details :\n'),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter Your Name ',
                    hintStyle: TextStyle(fontFamily: 'Poppins'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    fillColor: Colors.white,
                    filled: true),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: ' Vehicle model',
                      hintStyle: TextStyle(fontFamily: 'Poppins'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'What service do you need ?',
                    hintStyle: TextStyle(fontFamily: 'Poppins'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    fillColor: Colors.white,
                    filled: true),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: ' Location',
                      hintStyle: TextStyle(fontFamily: 'Poppins'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Contact No',
                      hintStyle: TextStyle(fontFamily: 'Poppins'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.r, top: 0),
                  child: Container(
                    height: 150.h,
                    width: 200.h,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_photo_alternate_outlined),
                      iconSize: 50,
                      color: Mycolor.maincolor,
                    ),
                  ),
                ),
              ),
              Center(
                  child: Button.elevatedButton(
                      text: 'Send',
                      onPressed: () {
                        AnimatedSnackBar.material('Booking Requested',
                                mobileSnackBarPosition:
                                    MobileSnackBarPosition.bottom,
                                type: AnimatedSnackBarType.success)
                            .show(context);
                      }))
            ],
          ),
        ));
  }
}
