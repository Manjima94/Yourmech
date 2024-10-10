// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';

class Seeall extends StatefulWidget {
  const Seeall({super.key});

  @override
  State<Seeall> createState() => _SeeallState();
}

class _SeeallState extends State<Seeall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mycolor.background,
        appBar: AppBar(backgroundColor: Mycolor.background,),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 100.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/service.jpg')),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cleaning & Spa    ',
                        style: TextStyle(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w600,
                          color: Mycolor.maincolor,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'Starts from   ',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '₹ 10,000',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 239, 137, 20),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 100.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/tyre2.jpg')),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tyres & Wheelcare ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Mycolor.maincolor,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'Starts from   ',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '₹ 10,000',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 239, 137, 20),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 100.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/clean.jpg')),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Denting & Painting ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Mycolor.maincolor,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'Starts from   ',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '₹ 10,000',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 239, 137, 20),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 100.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/fit.jpg')),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Suspension &Fitments',
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          color: Mycolor.maincolor,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'Starts from   ',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '₹ 10,000',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 239, 137, 20),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 100.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/mech.jpg')),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Battery problem ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Mycolor.maincolor,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'Starts from   ',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '₹ 10,000',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 239, 137, 20),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 100.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/service (2).jpg')),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'AC Service & Repair ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Mycolor.maincolor,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'Starts from   ',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '₹ 10,000',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 239, 137, 20),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
