// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_button.dart';

import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Customer/Home/bottom.dart';
import 'package:yourmech/view/Customer/Login/signup.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  var useremail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                'Welcome back ',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 26.sp,
                    color: Mycolor.maincolor,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              'Glad to see you, Again !',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  color: Mycolor.maincolor,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        centerTitle: true,
        clipBehavior: Clip.hardEdge,
        backgroundColor: Colors.white,
        toolbarHeight: 130.h,
        automaticallyImplyLeading: false,
        flexibleSpace: ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              color: Color.fromARGB(255, 251, 212, 167),
              alignment: Alignment.center,
              height: ScreenUtil().setHeight(170),
              width: double.infinity,
            )),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 90.r, top: 60.r),
            child: Text(
              'Signin to continue...',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22.sp,
                  color: Mycolor.maincolor,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 0, top: 80.r),
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
                  controller: useremail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: Color(0xff5C4685),
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
              child: TextFormField(
                validator: (value) {
                  if (value == null) {
                    return 'Incorrect password';
                  }
                  return null;
                },
                controller: useremail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.r)),
                  filled: true,
                  fillColor: Color(0xff5C4685),
                  contentPadding: EdgeInsets.all(20.r),
                  prefixIcon: Icon(
                    Icons.car_rental,
                    color: Colors.white,
                    size: 30.r,
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
            padding: EdgeInsets.only(left: 170.r, top: 10.r, bottom: 50.r),
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
                      builder: (context) => BottomNav(),
                    ));
              }),
          Padding(
            padding: EdgeInsets.only(left: 0, top: 20.r, bottom: 0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserSignup(),
                    ));
              },
              child: CustomText(
                ' Don’t have an account?  Signup',
                color: Mycolor.maincolor,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 00, top: 10, bottom: 5.r),
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
                  height: 45,
                  image: AssetImage('assets/icons/google.png'),
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
