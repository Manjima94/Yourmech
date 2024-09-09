import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/view/Customer/Emergency/Emergency.dart';
import 'package:yourmech/view/Customer/Requests/Requests.dart';
import 'package:yourmech/view/Customer/Profile/Userprofile.dart';
import 'package:yourmech/view/Customer/Home/userhome.dart';

import '../../../model/style/color.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _pageIndex = 0;
  final PageController _pageController = PageController();

  List<Widget> pages = const[
     UserHome(),
    UserRequest(),
    UserEmergency(),
    UserProfile(),

  ];

  List<Widget> items = [
    Icon(
      Icons.home_filled,
      size: 25.r,
      color: Mycolor.maincolor,
    ),
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
