// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';

class EmergencyRequest extends StatefulWidget {
  final String username;
  final String usercontact;
  final String userlocation;
  final String vehicle;
  final String service;

  const EmergencyRequest({
    Key? key,
    required this.username,
    required this.usercontact,
    required this.userlocation,
    required this.vehicle,
    required this.service,
  }) : super(key: key);

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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 20.r),
        child: Center(
          child: Container(
            width: ScreenUtil().setWidth(300),
            height: ScreenUtil().setHeight(600),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(40.r),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.r),
                            child: CustomText(
                              'Name:',
                              size: 16.spMin,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.r),
                            child: CustomText('Contact:', size: 16.spMin),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.r),
                            child: CustomText('Location:', size: 16.spMin),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.r),
                            child: CustomText('Vehicle:', size: 16.spMin),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.r),
                            child: CustomText('Service:', size: 16.spMin),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.r),
                            child: CustomText(
                              widget.username,
                              size: 16.spMin,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.r),
                            child: CustomText(
                              widget.usercontact,
                              size: 16.spMin,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.r),
                            child: CustomText(
                              widget.userlocation,
                              size: 16.spMin,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.r),
                            child: CustomText(
                              widget.vehicle,
                              size: 16.spMin,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.r),
                            child: CustomText(
                              widget.service,
                              size: 16.spMin,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.r, top: 20),
                    child: Container(
                      height: 150.h,
                      width: 200.h,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                      ),
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
                          fixedSize: WidgetStateProperty.all(Size(
                            ScreenUtil().setWidth(170),
                            ScreenUtil().setHeight(30),
                          )),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor:
                              WidgetStateProperty.all(Mycolor.button),
                        ),
                        onPressed: () async {
                          final phoneUri = Uri.parse('tel:${widget.usercontact}');
                          if (await canLaunchUrl(phoneUri)) {
                            await launchUrl(phoneUri);
                          } else {
                            print('Could not launch');
                          }
                        },
                        child: Text(
                          'Call',
                          style: TextStyle(
                            color: Mycolor.maincolor,
                            fontFamily: 'Poppins',
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
