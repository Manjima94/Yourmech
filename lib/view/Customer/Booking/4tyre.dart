import 'package:animations/animations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Customer/Booking/mechinfo.dart';

class Fourtyre extends StatefulWidget {
  String name;
   Fourtyre({required this.name,
    super.key});

  @override
  State<Fourtyre> createState() => _FourtyreState();
}

class _FourtyreState extends State<Fourtyre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mycolor.background,
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('mechanics')
                .where('vehicle_type', whereIn: ['4 tyre', 'Both']).snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasError) {
                return const Center(child: Text('Error fetching data.'));
              }

              if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return const Center(child: Text('No mechanics available.'));
              }

              // Build the ListView when data is available
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  var fourtyre = snapshot.data!.docs[index];

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
                                horizontal: 30.r, vertical: 0.r),
                            tileColor: Colors.white,
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(0.r)),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(fourtyre['name']),
                                CustomText(fourtyre['location']),
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
                          return const Mechinfo(
                          
                          );
                        }),
                  );
                },
              );
            }));
  }
}
