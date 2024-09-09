// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_button.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Admin/login.dart';
import 'package:yourmech/view/Customer/Login/onboarding1.dart';
import 'package:yourmech/view/Mechanic/Login.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(children: [
            ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  height: 330.h,
                  color: Color.fromARGB(255, 249, 233, 215),
                )),
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Image(
                  image: AssetImage('assets/images/mechcus.png'),
                  width: ScreenUtil().setWidth(double.infinity),
                  height: 300.h,
                  fit: BoxFit.cover),
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  child: Text('Admin',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          color: Mycolor.maincolor,
                          fontWeight: FontWeight.normal))),
            )
          ]),
          Padding(
            padding: EdgeInsets.only(right: 40.r, top: 0.r, bottom: 20.r),
            child: Text(
              'Welcome to Yourmech...',
              style: TextStyle(
                  fontFamily: 'InknutAntiqua',
                  fontSize: 22.sp,
                  color: Mycolor.maincolor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0.0, top: 0),
            child: Text(
              'Who you are ?',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  color: Mycolor.maincolor,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MechLogin(),
                        ));
                  },
                  child: Container(padding: EdgeInsets.only(top: 15),
                    alignment: Alignment.bottomCenter,
                    height: ScreenUtil().setHeight(140),
                    width: ScreenUtil().setWidth(110),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                            image: AssetImage('assets/images/mechanic.jpg')),
                        border: Border.all(
                            color: Color.fromARGB(255, 237, 132, 12), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: CustomText('\nMechanic'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Onboard1(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 135.h,
                    width: 110.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage('assets/images/users.png')),
                        border: Border.all(
                            color: Color.fromARGB(255, 237, 132, 12), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: CustomText('Customer'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
