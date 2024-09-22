
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';

class RequestInfo extends StatefulWidget {
  const RequestInfo({super.key});

  @override
  State<RequestInfo> createState() => _RequestInfoState();
}

class _RequestInfoState extends State<RequestInfo> {
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
              padding: const EdgeInsets.only(top: 150),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
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
                      Padding(
                      padding: EdgeInsets.only(top: 40.r,right: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(
                                ScreenUtil().setWidth(117),
                                ScreenUtil().setHeight(30))),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor:
                                MaterialStatePropertyAll(Mycolor.button),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Accept',
                            style: TextStyle(
                                color: Mycolor.maincolor,
                                fontFamily: 'Poppins',
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ), Column(
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
                      Padding(
                      padding: EdgeInsets.only(top: 40.r,right: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(
                                ScreenUtil().setWidth(117),
                                ScreenUtil().setHeight(30))),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor:
                                MaterialStatePropertyAll(Mycolor.button),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Reject',
                            style: TextStyle(
                                color: Mycolor.maincolor,
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
       
        Positioned(
          left: 120,top: 120,
          child: Padding(
            padding: EdgeInsets.all(24.r),
            child: CircleAvatar(
              radius: 51.r,
            ),
          ),
        ),
      ]),
    );
  }
}
