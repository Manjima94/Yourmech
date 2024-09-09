// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_heading.dart';
import 'package:yourmech/model/widget/custom_text.dart';

import 'package:yourmech/view/Customer/Profile/Editprof.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfile(),
                    ));
              },
              icon: Icon(Icons.edit),
              color: Mycolor.maincolor,
            )
          ],
          title: CustomHead('Profile', Mycolor.maincolor),
          centerTitle: true,
          clipBehavior: Clip.hardEdge,
          backgroundColor: Mycolor.background,
          toolbarHeight: 120,
          automaticallyImplyLeading: false,
          flexibleSpace: ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                alignment: Alignment.center,
                height: ScreenUtil().setHeight(150),
                width: double.infinity,
              )),
        ),
        backgroundColor: Mycolor.background,
        body: Padding(
          padding: EdgeInsets.only(left: 30, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 60,
              ),
              CustomText('Name'),
              CustomText('Name@gmail.com'),
              SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Mycolor.maincolor,
                  endIndent: 10,
                  height: 50,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.call,
                            color: Mycolor.maincolor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.location_on_rounded,
                            color: Mycolor.maincolor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.time_to_leave,
                            color: Mycolor.maincolor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.history_sharp,
                            color: Mycolor.maincolor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.live_help_sharp,
                            color: Mycolor.maincolor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.info_outlined,
                            color: Mycolor.maincolor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.directions_run_rounded,
                            color: Mycolor.maincolor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 0, bottom: 10, left: 10),
                          child: CustomText('Contact'),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, bottom: 20, left: 10),
                          child: CustomText('Location'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 0, bottom: 0, left: 10),
                          child: CustomText(' My Vehicle'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextButton(
                            child: Text(
                              'Service History',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Mycolor.maincolor,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => History(),
                              //     ));
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 0, bottom: 20, left: 10),
                          child: CustomText('About'),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 0, bottom: 10, left: 10),
                          child: CustomText('Help Centre'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 0, bottom: 30),
                          child: TextButton(
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Mycolor.maincolor,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ]),
                ],
              ),
            ],
          ),
        ));
  }
}
