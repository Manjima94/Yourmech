// ignore_for_file: prefer_const_constructors, unused_import

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/view/Mechanic/Request/RequestInfo.dart';
import 'package:yourmech/view/Mechanic/Emergency/emergencyreq.dart';

class MechTabRequest extends StatefulWidget {
  const MechTabRequest({super.key});

  @override
  State<MechTabRequest> createState() => _MechTabRequestState();
}

// ignore: camel_case_types
class _MechTabRequestState extends State<MechTabRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.background,
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: OpenContainer(
              closedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              transitionType: ContainerTransitionType.fadeThrough,
              transitionDuration: const Duration(milliseconds: 500),
              closedBuilder:
                  (BuildContext context, VoidCallback openContainer) {
                return ListTile(
                  contentPadding:
                      REdgeInsets.symmetric(horizontal: 10.r, vertical: 0.r),
                  tileColor: Colors.white,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(0.r)),
                  title: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name'),
                      Text('Problem'),
                      Text('Location'),
                    ],
                  ),
                  leading: CircleAvatar(
                    radius: 40.r,
                  ),
                  onTap: openContainer,
                );
              },
              openBuilder: (BuildContext context, VoidCallback _) {
                return RequestInfo();
              },
            ),
          );

          // trailing: Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     ElevatedButton(
          //         style: ButtonStyle(
          //             backgroundColor:
          //                 WidgetStatePropertyAll(Mycolor.maincolor),
          //             shape: WidgetStatePropertyAll(
          //                 RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(10))),
          //             fixedSize: WidgetStatePropertyAll(Size(
          //               ScreenUtil().setWidth(70),
          //               ScreenUtil().setHeight(21),
          //             ))),
          //         onPressed: () {},
          //         child: Text(
          //           'Accept',
          //           style: TextStyle(
          //               fontFamily: 'Poppins',
          //               fontSize: 10,
          //               color: Colors.white),
          //         ))
          //   ],
          // ),
        },
      ),
    );
  }
}
