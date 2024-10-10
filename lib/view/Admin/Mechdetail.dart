// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';

class MechDetails extends StatefulWidget {
  const MechDetails({super.key});

  @override
  State<MechDetails> createState() => _MechDetailsState();
}

class _MechDetailsState extends State<MechDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
            ),
            CustomText('Name'),
            CustomText('Name@gmail.com'),
            Divider(
              color: Mycolor.maincolor,
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Mycolor.maincolor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Icon(
                          Icons.location_on,
                          color: Mycolor.maincolor,
                        ),
                      ),
                      Icon(
                        Icons.commute,
                        color: Mycolor.maincolor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Icon(
                          Icons.store_mall_directory,
                          color: Mycolor.maincolor,
                        ),
                      ),
                      Icon(
                        Icons.commute,
                        color: Mycolor.maincolor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 25),
                        child: Icon(
                          Icons.miscellaneous_services,
                          color: Mycolor.maincolor,
                        ),
                      ),
                      Icon(
                        Icons.work_history_outlined,
                        color: Mycolor.maincolor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 40),
                        child: Icon(Icons.file_present_outlined,
                            color: Mycolor.maincolor),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText('Contact'),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: CustomText('Location'),
                        ),
                        CustomText('Vehicle'),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: CustomText('Shop name'),
                        ),
                        CustomText('Vehicle Type'),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: CustomText('Services'),
                        ),
                        CustomText('Experience'),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 40),
                          child: CustomText('License/Certificate'),
                        ),
                      ]),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shadowColor: WidgetStatePropertyAll(Mycolor.maincolor),
                    elevation: WidgetStatePropertyAll(5),
                    fixedSize: WidgetStatePropertyAll(Size(
                        ScreenUtil().setWidth(130),
                        ScreenUtil().setHeight(30))),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    backgroundColor: WidgetStatePropertyAll(Mycolor.button),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Accept',
                    style: TextStyle(
                        color: Mycolor.maincolor,
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shadowColor: WidgetStatePropertyAll(Mycolor.maincolor),
                    elevation: WidgetStatePropertyAll(5),
                    fixedSize: WidgetStatePropertyAll(Size(
                        ScreenUtil().setWidth(130),
                        ScreenUtil().setHeight(30))),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    backgroundColor: WidgetStatePropertyAll(Mycolor.button),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Reject',
                    style: TextStyle(
                        color: Mycolor.maincolor,
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
