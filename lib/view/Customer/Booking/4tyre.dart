import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/view/Customer/Booking/mechinfo.dart';

class Fourtyre extends StatefulWidget {
  const Fourtyre({super.key});

  @override
  State<Fourtyre> createState() => _FourtyreState();
}

class _FourtyreState extends State<Fourtyre> {
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
                        REdgeInsets.symmetric(horizontal: 30.r, vertical: 0.r),
                    tileColor: Colors.white,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(0.r)),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name'),
                        Text('Location'),
                        Text('***'),
                      ],
                    ),
                    leading: CircleAvatar(
                      radius: 40.r,
                    ),
                    onTap: openContainer,
                  );
                },
                openBuilder: (BuildContext context, VoidCallback _) {
                  return const Mechinfo();
                }),
          );
        },
      ),
    );
  }
}
