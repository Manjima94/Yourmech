import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';
class BookRequestInfo extends StatefulWidget {
  final String service;
  final String vehicle;
  final String date;
  final String time;
  final String location;
  final String contact;

  const BookRequestInfo({
    super.key,
    required this.service,
    required this.vehicle,
    required this.date,
    required this.time,
    required this.location,
    required this.contact,
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
                        child: CustomText('Service: ${widget.service}'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomText('Vehicle: ${widget.vehicle}'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomText('Date: ${widget.date}'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomText('Time: ${widget.time}'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomText('Location: ${widget.location}'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomText('Contact no: ${widget.contact}'),
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
