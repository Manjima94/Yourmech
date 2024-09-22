// ignore: file_names

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Admin/Mechdetail.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.background,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: OpenContainer(closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                transitionType: ContainerTransitionType.fadeThrough,
                transitionDuration: const Duration(milliseconds: 500),
                closedBuilder:
                    (BuildContext context, VoidCallback openContainer) {
                  return ListTile(
                    contentPadding:
                        REdgeInsets.symmetric( vertical: 5.r),
                    tileColor: Colors.white,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(0.r)),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        CustomText('Name'),
                        CustomText('Location'),
                        CustomText('Contact'),
                      ],
                    ),
                    leading: CircleAvatar(
                      radius: 40.r,
                    ),
                    onTap: openContainer,
                  );
                },
                openBuilder: (BuildContext context, VoidCallback _) {
                  return const MechDetails();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
