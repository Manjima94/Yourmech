// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Customer/Booking/Bookmech.dart';
import 'package:yourmech/view/Customer/Home/seeall.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Image.asset(
              'assets/images/machine.jpg',
              width: 150.w,
              height: 160.h,
              fit: BoxFit.cover,
            ),
          )
        ],
        title: Text('what services do\n you need ?',
            style: TextStyle(
                color: Mycolor.maincolor,
                fontFamily: 'Poppins',
                fontSize: 21.sp,
                fontWeight: FontWeight.w600)),
        centerTitle: true,
        clipBehavior: Clip.hardEdge,
        backgroundColor: Mycolor.background,
        toolbarHeight: 190,
        flexibleSpace: ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              color: Color.fromARGB(255, 255, 255, 255),
              alignment: Alignment.center,
              height: ScreenUtil().setHeight(190),
              width: double.infinity,
            )),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shadowColor: MaterialStatePropertyAll(Mycolor.maincolor),
                    elevation: MaterialStatePropertyAll(5),
                    fixedSize: MaterialStatePropertyAll(Size(
                        ScreenUtil().setWidth(280),
                        ScreenUtil().setHeight(60))),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 255, 255, 255)),
                  ),
                  onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Booking(),
                        ));},
                  child: Row(
                    children: [
                      Text(
                        'Book my mechanic',
                        style: TextStyle(
                            color: Mycolor.maincolor,
                            fontFamily: 'Poppins',
                            fontSize: 22.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Top Services For Cars...           ',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: Mycolor.maincolor,
                  fontFamily: 'Poppins',
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/clean.jpg',
                              width: 100,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Cleaning &\n Spa',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Mycolor.maincolor,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/tyre.jpg',
                              width: 100,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Denting  &\n Painting',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Mycolor.maincolor,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/mech.jpg',
                              width: 100,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Tyres &\nWheelcare',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Mycolor.maincolor,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 270),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shadowColor: MaterialStatePropertyAll(Mycolor.maincolor),
                    elevation: MaterialStatePropertyAll(5),
                    fixedSize: MaterialStatePropertyAll(Size(
                        ScreenUtil().setWidth(90), ScreenUtil().setHeight(15))),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    backgroundColor:
                        MaterialStatePropertyAll(Mycolor.maincolor),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Seeall(),
                        ));
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                        color: Color.fromARGB(255, 252, 252, 252),
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Text(
                'Services For Bikes...            ',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: Mycolor.maincolor,
                  fontFamily: 'Poppins',
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/tyre3.jpg',
                              width: 100,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Tyre replace\n',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Mycolor.maincolor,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/oil.png',
                              width: 100,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Oil change\n',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Mycolor.maincolor,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/machine.jpg',
                              width: 100,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Engine \nproblem',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Mycolor.maincolor,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
