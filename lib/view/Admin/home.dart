// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/view/Admin/Customer.dart';
import 'package:yourmech/view/Admin/mech.dart';


class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Mycolor.background,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Mycolor.background,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: ScreenUtil().setWidth(300),
              height: ScreenUtil().setHeight(50),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: TabBar(
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Mycolor.maincolor,
                  indicatorPadding: EdgeInsets.all(8),
                  
                  indicator: BoxDecoration(color: Mycolor.maincolor,borderRadius: BorderRadius.circular(10)),
                  tabs: [
                    Text(
                      'Mechanic',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          // color:Mycolor.maincolor,
                          fontSize: 20.spMin,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Customer',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          // color:  Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ]),
            ),
            Expanded(child: TabBarView(children: [Mechanic(),Customer()]))
          ],
        ),
        
      ),
    );
  }
}
