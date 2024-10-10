// ignore_for_file: prefer_const_constructors, avoid_print
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_heading.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Mechanic/Login.dart';
import 'package:yourmech/view/Mechanic/Profile/profileedit.dart';
import  'package:image_picker/image_picker.dart';
class MechProfile extends StatefulWidget {
  const MechProfile({super.key});

  @override
  State<MechProfile> createState() => _MechProfileState();
}

class _MechProfileState extends State<MechProfile> {
  String mechname = '';
    String mechmobile = '';
      String mechlocation = '';
        String mechtyre = '';
          String mechnshopname = '';
          
          XFile? pick;
  File? image;
  String? imageUrl;

  Future<void> addImage() async {
    try {
      ImagePicker picked = ImagePicker();
      pick = await picked.pickImage(source: ImageSource.gallery);
      if (pick != null) {
        setState(() {
          image = File(pick!.path);
        });
      }
    } catch (e) {
      print("error : $e");
    }
  }


  Future<void> fetchmechDetail() async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? mechId = pref.getString('Mechuid');
      print('SharedPreferences std Id: $mechId');
      if (mechId != null && mechId.isNotEmpty) {
        DocumentSnapshot mechSnapshot = await FirebaseFirestore.instance
            .collection('mechanics')
            .doc(mechId)
            .get();
  if (mechSnapshot.exists) {
          setState(() {
            mechname = mechSnapshot['name'] ?? '';
            mechmobile = mechSnapshot['mobile'] ?? '';
            mechlocation = mechSnapshot['location'] ?? '';
            mechnshopname = mechSnapshot['shopname'] ?? '';
            mechtyre = mechSnapshot['vehicle_type'] ?? '';
          
          });
        }
      }
    } catch (e) {
      
      print('Error fetching student details: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error fetching student details.')),
      );
    }
  }


  void initState() {
    super.initState();
   
    fetchmechDetail();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mycolor.background,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileEdit(),
                      ));
                },
                icon: Icon(
                  Icons.edit,
                  color: Mycolor.maincolor,
                ))
          ],
          title: CustomHead('Profile', Mycolor.maincolor),
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
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 0, top: 22.r),
                  child: Container(
                    height: ScreenUtil().setHeight(105),
                    decoration: BoxDecoration(
                        color: Mycolor.maincolor, shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 0, top: 24.r),
                    child: CircleAvatar(
                      radius: 51.r,
                    ),
                  ),
                ),
              ],
            ),
            CustomText(mechname,size: 18.spMin,),
            Row(
              children:  [
                Padding(
                  padding: EdgeInsets.only(left: 50, top: 27),
                  child: Column(
                    children: [
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
                          Icons.store,
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
                        padding: EdgeInsets.all(13),
                        child: Icon(
                          Icons.directions_run_rounded,
                          color: Mycolor.maincolor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(13),
                        child: Icon(
                          Icons.live_help_sharp,
                          color: Mycolor.maincolor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.info_outlined,
                          color: Mycolor.maincolor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 27),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: CustomText(mechmobile,size: 18.spMin),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: CustomText(mechlocation,size: 18.spMin),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: CustomText(mechnshopname,size: 18.spMin),
                      ),
                      Padding(
                        padding: EdgeInsets.all(13),
                       child: CustomText(mechtyre,size: 18.spMin),
                      ),
                     
                       Padding(
                        padding: EdgeInsets.all(0),
                        child: TextButton(
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 18.spMin,
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
                                                builder: (context) => MechLogin(),
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
                   
                      ), Padding(
                        padding: EdgeInsets.all(8),
                        child: CustomText('Help',size: 18.spMin),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: CustomText('About',size: 18.spMin),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
