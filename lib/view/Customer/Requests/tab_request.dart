import 'package:animations/animations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Customer/Requests/requestinfo.dart';

class TabRequest extends StatefulWidget {
  const TabRequest({
    super.key,
  });

  @override
  State<TabRequest> createState() => _TabRequestState();
}

class _TabRequestState extends State<TabRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mycolor.background,
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('Booking Request')
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }

              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  var booking = snapshot.data!.docs[index];
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: OpenContainer(
                      closedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      transitionType: ContainerTransitionType.fadeThrough,
                      transitionDuration: const Duration(milliseconds: 500),
                      closedBuilder:
                          (BuildContext context, VoidCallback openContainer) {
                        return ListTile(
                          contentPadding: REdgeInsets.symmetric(
                              horizontal: 10.r, vertical: 0.r),
                          tileColor: Colors.white,
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(0.r)),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(booking['Service']),
                              CustomText(booking['Date']),
                              CustomText(booking['Time']),
                            ],
                          ),
                          leading: CircleAvatar(
                            radius: 40.r,
                          ),
                          onTap: openContainer,
                        );
                      },
                      openBuilder: (BuildContext context, VoidCallback _) {
                        return BookRequestInfo(
                          serviceController: TextEditingController(),
                          dateController: TextEditingController(),
                          timeController: TextEditingController(),
                          locationController: TextEditingController(),
                          phoneController: TextEditingController(),
                          vehicleController: TextEditingController(),
                        );
                      },
                    ),
                  );
                },
              );
            }));
  }
}
