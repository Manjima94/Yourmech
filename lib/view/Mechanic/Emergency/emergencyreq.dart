// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';

class EmergencyRequest extends StatefulWidget {
  const EmergencyRequest({super.key});

  @override
  State<EmergencyRequest> createState() => _EmergencyRequestState();
}

class _EmergencyRequestState extends State<EmergencyRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.background,
      appBar: AppBar(
        backgroundColor: Mycolor.background,
      ),
      body: Center(
        child: Container(
          
          width: ScreenUtil().setWidth(300),
          height: ScreenUtil().setHeight(580),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: Colors.white,
          ),
          child: Column(
           
            children: [
              Padding(
                padding: EdgeInsets.all(15.r),
                child: CircleAvatar(
                  radius: 51.r,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: CustomText('Name :'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: CustomText('Service :'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CustomText('Vehicle :'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CustomText('Location :'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CustomText('Contact no :'),
                        ),
                      ],
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
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.r, top: 20),
                child: Container(
                  height: 150.h,
                  width: 200.h,
                  decoration: BoxDecoration(border: Border.all(),borderRadius:BorderRadius.circular(20) ),
                  child: IconButton(
          
                    onPressed: () {},
                    icon: Icon(Icons.add_photo_alternate_outlined),
                    iconSize: 50,
                    color: Mycolor.maincolor,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(
                          ScreenUtil().setWidth(170),
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
                      'Call',
                      style: TextStyle(
                          color: Mycolor.maincolor,
                          fontFamily: 'Poppins',
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
