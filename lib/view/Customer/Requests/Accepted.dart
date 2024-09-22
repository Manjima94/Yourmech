
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/view/Customer/Requests/Acceptinfo.dart';


class UserAccept extends StatefulWidget {
  const UserAccept({super.key});

  @override
  State<UserAccept> createState() => _UserAcceptState();
}

class _UserAcceptState extends State<UserAccept> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(   backgroundColor: Mycolor.background,
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20,left:20,right: 20 ),
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
                return const AcceptUser();
              },
            ),
          );

        },
      ),
    );
  }
}