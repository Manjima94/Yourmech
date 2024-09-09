// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_heading.dart';
import 'package:yourmech/view/Mechanic/Request/Accept.dart';
import 'package:yourmech/view/Mechanic/Request/tab_request.dart';

class MechRequests extends StatefulWidget {
  const MechRequests({super.key});

  @override
  State<MechRequests> createState() => _MechRequestsState();
}

class _MechRequestsState extends State<MechRequests> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Mycolor.background,
        appBar: AppBar(
          title: CustomHead('Requests', Mycolor.maincolor),
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
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 0.r, top: 30.r, bottom: 20.r),
            child: Container(
              width: ScreenUtil().setWidth(300),
              height: ScreenUtil().setHeight(40),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.white,
                  unselectedLabelColor: Mycolor.maincolor,
                  indicatorPadding: EdgeInsets.all(7),
                  indicator: BoxDecoration(
                      color: Mycolor.maincolor,
                      borderRadius: BorderRadius.circular(10.r)),
                  tabs: [
                    Text(
                      'Requests',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          // color:Mycolor.maincolor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Accepted',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          // color:  Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600),
                    )
                  ]),
            ),
          ),
          Expanded(
              child: TabBarView(children: const [MechTabRequest(), Accept()]))
        ]),
      ),
    );
  }
}
