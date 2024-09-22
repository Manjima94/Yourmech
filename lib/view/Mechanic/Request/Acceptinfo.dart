// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';

class AcceptInfo extends StatefulWidget {
  const AcceptInfo({super.key});

  @override
  State<AcceptInfo> createState() => _AcceptInfoState();
}

class _AcceptInfoState extends State<AcceptInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.background,
      appBar: AppBar(
        backgroundColor: Mycolor.background,
      ),
      body: Stack(children: [
        Center(
          child: Container(
            alignment: Alignment.bottomLeft,
            width: ScreenUtil().setWidth(300),
            height: ScreenUtil().setHeight(500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50,bottom: 30),
                        child: CircleAvatar(radius: 50,),
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
                        child: CustomText('Date :'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomText('Time :'),
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
          ),
        ),
        
        
      ]),
    );
  }
}
