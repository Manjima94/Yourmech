// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_heading.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Customer/Login/login.dart';
import 'package:yourmech/view/Customer/Profile/Editprof.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String username = '';
  String useremail = '';
  String usercontact = '';
  String userlocation = '';
  String userpassword = '';

  Future<void> fetchUserDetails() async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? userId = pref.getString('Useruid');
      print('SharedPreference UserID: $userId');
      if (userId != null && userId.isNotEmpty) {
        DocumentSnapshot usersnapshot = await FirebaseFirestore.instance
            .collection('Customers')
            .doc(userId)
            .get();

        if (usersnapshot.exists) {
          setState(() {
            username = usersnapshot['userName'] ?? "";
            useremail = usersnapshot['userEmail'] ?? "";
            usercontact = usersnapshot['userMobile'] ?? "";
            userlocation = usersnapshot['userLocation'] ?? '';
            userpassword = usersnapshot['userPassword'] ?? '';
          });
        }
      }
    } catch (e) {
      print("Error fetching user details: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUserDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
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
            color: Colors.white,
            alignment: Alignment.center,
            height: ScreenUtil().setHeight(150),
            width: double.infinity,
          ),
        ),
      ),
      backgroundColor: Mycolor.background,
      body: Padding(
        padding: EdgeInsets.only(left: 30, top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(radius: 60),
            CustomText(
              username,
              size: 18.spMin,
            ),
            CustomText(useremail, size: 18.spMin),
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
                        padding: EdgeInsets.all(15),
                        child: Icon(Icons.call, color: Mycolor.maincolor),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.location_on_rounded,
                            color: Mycolor.maincolor),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child:
                            Icon(Icons.history_sharp, color: Mycolor.maincolor),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.live_help_sharp,
                            color: Mycolor.maincolor),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child:
                            Icon(Icons.info_outlined, color: Mycolor.maincolor),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Icon(Icons.directions_run_rounded,
                            color: Mycolor.maincolor),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 7, left: 10),
                      child: CustomText(usercontact, size: 20.spMin),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 0, left: 10),
                      child: CustomText(userlocation, size: 20.spMin),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 0),
                      child: TextButton(
                        child: Text(
                          'Service History',
                          style: TextStyle(
                            fontSize: 20.spMin,
                            color: Mycolor.maincolor,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        onPressed: () {
                          // Add navigation to service history page
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 20, left: 10),
                      child: CustomText('About', size: 20.spMin),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 10, left: 10),
                      child: CustomText('Help Centre', size: 20.spMin),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 30),
                      child: TextButton(
                        child: Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 20.spMin,
                            color: Mycolor.maincolor,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                titlePadding: EdgeInsets.all(25),
                                backgroundColor: Mycolor.background,
                                title: Text(
                                  'Are you sure?',
                                  style: TextStyle(
                                    color: Mycolor.maincolor,
                                    fontFamily: 'Poppins',
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                actions: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: CustomText('No'),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => UserLogin(),
                                            ),
                                          );
                                        },
                                        child: CustomText('Logout'),
                                      )
                                    ],
                                  )
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
