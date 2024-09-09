// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_heading.dart';
import 'package:yourmech/view/Customer/Booking/2tyre.dart';
import 'package:yourmech/view/Customer/Booking/4tyre.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Mycolor.background,
          appBar: AppBar(
            title: Text(
              '   Book A Mechanic',
              style: TextStyle(
                  color: Mycolor.maincolor,
                  fontFamily: 'Poppins',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            clipBehavior: Clip.hardEdge,
            backgroundColor: Mycolor.background,
            toolbarHeight: 100,
            flexibleSpace: ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  alignment: Alignment.center,
                  height: ScreenUtil().setHeight(150),
                  width: double.infinity,
                )),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40),
                child: Container(
                  height: 35.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Mycolor.maincolor),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 200,
                        child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0),
                                hintText: ' Search by location',
                                hintStyle: TextStyle(fontFamily: 'Poppins'),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none))),
                      ),
                    ],
                  ),
                ),
              ),
              TabBar(
                  tabAlignment: TabAlignment.center,
                  isScrollable: true,
                  indicator: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color.fromARGB(255, 241, 164, 76))),
                  tabs: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/icons/car.png',
                        width: 90,
                        height: 60,
                        fit: BoxFit.contain,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/icons/scooter.png',
                        width: 90,
                        height: 60,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ]),
              Expanded(child: TabBarView(children: const [Fourtyre(), Twotyre()]))
            ],
          ),
        ));
  }
}
