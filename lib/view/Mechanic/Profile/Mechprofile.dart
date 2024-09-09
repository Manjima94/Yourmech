// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_heading.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Mechanic/Profile/profileedit.dart';

class MechProfile extends StatefulWidget {
  const MechProfile({super.key});

  @override
  State<MechProfile> createState() => _MechProfileState();
}

class _MechProfileState extends State<MechProfile> {
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
            CustomText('Name'),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 50, top: 20),
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
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.build,
                          color: Mycolor.maincolor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.business_center_rounded,
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
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: CustomText(''),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomText(''),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomText(''),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomText(''),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomText(''),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomText(''),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ));
  }
}
