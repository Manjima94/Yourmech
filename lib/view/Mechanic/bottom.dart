// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/view/Mechanic/Emergency/Emergency.dart';
import 'package:yourmech/view/Mechanic/History.dart';
import 'package:yourmech/view/Mechanic/Profile/Mechprofile.dart';
import 'package:yourmech/view/Mechanic/Request/request.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _pageIndex = 0;
  final PageController _pageController = PageController();

  List<Widget> pages = [
    MechRequests(),
    Emergency(),
    MechProfile(),
    MechHistory()
  ];

  List<Widget> items = [
     Icon(Icons.car_repair,size: 25.r,color: Mycolor.maincolor,),
    
    Icon(
      Icons.emergency_share,
      size: 25.r,
      color: Mycolor.maincolor,
    ),
    Icon(
      Icons.person,
      size: 25.r,
      color: Mycolor.maincolor,
    ),Icon(
      Icons.work_history_rounded,
      size: 25.r,
      color: Mycolor.maincolor,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.background,
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.fastOutSlowIn,
        buttonBackgroundColor: Colors.white,
        height: 75,
        color: Mycolor.background,
        items: items,
        backgroundColor: Mycolor.maincolor,
        index: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
          _pageController.jumpToPage(index);
        },
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        children: pages,
      ),
    );
  }
}
