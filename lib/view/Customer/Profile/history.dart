// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_heading.dart';
import 'package:yourmech/model/widget/custom_text.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.background,
      appBar: AppBar(
        title: CustomHead('History', Mycolor.maincolor),
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
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 30.r, left: 30.r, right: 30.r),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => RequestInfo(),
                //     ));
              },
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.top,
                visualDensity: VisualDensity(horizontal: 4),
                contentPadding:
                    REdgeInsets.symmetric(horizontal: 30.r, vertical: 0.r),
                tileColor: Colors.white,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r)),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CustomText('Name'),
                    CustomText('Problem'),
                    CustomText('Location'),
                    CustomText('Date,Time'),
                  ],
                ),
                leading: Padding(
                  padding:  EdgeInsets.only(right: 30.r),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40.r,
                      ),
                      CustomText('Name'),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
