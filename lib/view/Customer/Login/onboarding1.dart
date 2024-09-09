// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/view/Customer/Login/login.dart';

class Onboard1 extends StatefulWidget {
  const Onboard1({super.key});

  @override
  State<Onboard1> createState() => _Onboard1State();
}

class _Onboard1State extends State<Onboard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverBoard(
          skipCallback: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    UserLogin(), // Replace HomeScreen with your desired screen
              ),
            );
          },
          finishText: 'Get Started',
          buttonColor: Mycolor.maincolor,
          allowScroll: true,
          showBullets: true,
          activeBulletColor: Mycolor.button,
          inactiveBulletColor: Mycolor.maincolor,
          pages: pages,
          finishCallback: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    UserLogin(), // Replace HomeScreen with your desired screen
              ),
            );
          }),
    );
  }
}

final pages = [
  PageModel.withChild(
    child: Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Column(  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/mech.jpg',
            width: 350.w,
            height: 300.h,
            fit: BoxFit.cover,
          ),
           SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Access nearby mechanics\n when you are in trouble',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  fontSize: 20.sp,
                  color: Mycolor.maincolor),
              textAlign: TextAlign.center,
            ),
          ),
           SizedBox(height: 10.h),
          Text(
            'Embark on the smoothest journey on   wheels with our vehicle.',
            style: TextStyle(
                fontSize: 16.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                color: Mycolor.maincolor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    color: Colors.white,
  ),
  PageModel.withChild(
    child: Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/service.jpg',
            width: 350.w,
            height: 350.h,
            fit: BoxFit.cover,
          ),
          Text(
            'Experience hassle-free vehicle\nservicing at your fingertips!',
            style: TextStyle(
                fontSize: 18.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                color: Mycolor.maincolor),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.h),
          Text(
            'Effortless. Efficient. Every ride, every time.',
            style: TextStyle(
                fontSize: 16.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                color: Mycolor.maincolor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    color: Colors.white,
  ),
  PageModel.withChild(
    child: Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/tyre.jpg',
            width: 350.w,
            height: 350.h,
            fit: BoxFit.cover,
          ),
          Text(
            'Book a Mechanic',
            style: TextStyle(
                fontSize: 18.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                color: Mycolor.maincolor),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.h),
          Text(
            'Get expert help on-the-go, book your mechanic instantly',
            style: TextStyle(
                fontSize: 16.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                color: Mycolor.maincolor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    color: Colors.white,
  ),
];
