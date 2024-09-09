// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_button.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Mechanic/bottom.dart';
import 'package:yourmech/view/Mechanic/signup.dart';

class MechLogin extends StatefulWidget {
  const MechLogin({super.key});

  @override
  State<MechLogin> createState() => _MechLoginState();
}

class _MechLoginState extends State<MechLogin> {
  var mechemail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/clean.jpg'),
              width: ScreenUtil().setWidth(double.infinity),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(right: 160.r, top: 20.r, bottom: 10.r),
              child: Text(
                'Welcome back !',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    color: Mycolor.maincolor,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 60.r, top: 0),
              child: Text(
                'Signin to continue...',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24.sp,
                    color: Mycolor.maincolor,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 0, top: 20.r),
                child: SizedBox(
                  width: ScreenUtil().setWidth(300),
                  height: ScreenUtil().setHeight(44),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null) {
                        return 'Incorrect password';
                      }
                      return null;
                    },
                    controller: mechemail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.r)),
                      filled: true,
                      fillColor:  Color(0xff5C4685),
                      contentPadding: EdgeInsets.all(20.r),
                      prefixIcon: Icon(
                        Icons.mail_rounded,
                        color: Colors.white,
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 20.r),
              child: SizedBox(
                width: ScreenUtil().setWidth(300),
                height: ScreenUtil().setHeight(44),
                child:  TextFormField(
                    validator: (value) {
                      if (value == null) {
                        return 'Incorrect password';
                      }
                      return null;
                    },
                    controller: mechemail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.r)),
                      filled: true,
                      fillColor: Color(0xff5C4685),
                      contentPadding: EdgeInsets.all(20.r),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 170.r, top: 10.r, bottom: 20.r),
              child: CustomText(
                'Lost your keys ?',
                color: Mycolor.maincolor,
              ),
            ),
            Button.elevatedButton(
                text: 'LOGIN',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bottomnavigation(),
                      ));
                }),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 10.r, bottom: 0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signup(),
                      ));
                },
                child: CustomText(
                  ' Don’t have an account?  Signup',
                  color: Mycolor.maincolor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 00, top: 10.r, bottom: 0.r),
              child: Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      width: 120.w,
                      child: Divider(
                        height: 20.h,
                        thickness: 2,
                        endIndent: 10.w,
                        indent: 20.w,
                        color: Mycolor.maincolor,
                      ),
                    ),
                    Flexible(
                      child: CustomText(
                        'Or Signup with',
                        color: Mycolor.maincolor,
                      ),
                    ),
                    SizedBox(
                      width: 120.w,
                      child: Divider(
                        height: 20.h,
                        thickness: 2,
                        endIndent: 20.w,
                        indent: 10.w,
                        color: Mycolor.maincolor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                Padding(
                  padding: EdgeInsets.only(right: 0, top: 10, bottom: 0.r),
                  child: Image(
                    height: 40.h,
                    image: AssetImage('assets/icons/google.png'),
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )

           
          ],
        ),
      ),
    );
  }
}
