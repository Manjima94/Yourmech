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
                      Icon(Icons.call),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Icon(Icons.location_on),
                      ),
                      Icon(Icons.commute),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Icon(Icons.store_mall_directory),
                      ),
                      Icon(Icons.commute),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 25),
                        child: Icon(Icons.miscellaneous_services),
                      ),
                      Icon(Icons.work_history_outlined),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 40),
                        child: Icon(Icons.file_present_outlined),
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
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shadowColor: MaterialStatePropertyAll(Mycolor.maincolor),
                    elevation: MaterialStatePropertyAll(5),
                    fixedSize: MaterialStatePropertyAll(Size(
                        ScreenUtil().setWidth(130),
                        ScreenUtil().setHeight(30))),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(Mycolor.button),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Accept',
                    style: TextStyle(
                        color: Mycolor.maincolor,
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shadowColor: MaterialStatePropertyAll(Mycolor.maincolor),
                    elevation: MaterialStatePropertyAll(5),
                    fixedSize: MaterialStatePropertyAll(Size(
                        ScreenUtil().setWidth(130),
                        ScreenUtil().setHeight(30))),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(Mycolor.button),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Reject',
                    style: TextStyle(
                        color: Mycolor.maincolor,
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
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
