// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';

// ignore: must_be_immutable
class BookRequestInfo extends StatefulWidget {
  Map<String, String> bookinfo; 

  BookRequestInfo({
    super.key,
    required this.bookinfo,
  });

  @override
  State<BookRequestInfo> createState() => _BookRequestInfoState();
}

class _BookRequestInfoState extends State<BookRequestInfo> {
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
            // ignore: prefer_const_constructors
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: CustomText('Service: '),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomText('Vehicle:'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomText('Date:'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomText('Time:'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomText('Location: '),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomText('Contact no: '),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: CustomText(widget.bookinfo['Service'] ?? ''),
                          ),
                           Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomText(widget.bookinfo['Vehicle'] ?? ''),
                          ),
                           Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomText(widget.bookinfo['Date']?? ''),
                          ),
                           Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomText(widget.bookinfo['Time']??''),
                          ),
                           Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomText(widget.bookinfo['Location'] ?? ''),
                          ),
                           Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomText(widget.bookinfo['Contact no'] ?? ''),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 120,
          top: 120,
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
