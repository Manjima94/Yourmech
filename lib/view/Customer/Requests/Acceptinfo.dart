// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Customer/Requests/Requests.dart';
import 'package:yourmech/view/Customer/Booking/pay.dart';

class AcceptUser extends StatefulWidget {
  const AcceptUser({super.key});

  @override
  State<AcceptUser> createState() => _AcceptUserState();
}

class _AcceptUserState extends State<AcceptUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.background,
      appBar: AppBar(
        backgroundColor: Mycolor.background,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: ScreenUtil().setWidth(300),
          height: ScreenUtil().setHeight(500),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.all(24.r),
                    child: CircleAvatar(
                      radius: 51.r,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(8),
                child: CustomText('Name'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText('Problem'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText('Date :'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText('Time :'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText('Location :'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText('Contact no :'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shadowColor: MaterialStatePropertyAll(Mycolor.maincolor),
                    elevation: MaterialStatePropertyAll(5),
                    fixedSize: MaterialStatePropertyAll(Size(
                        ScreenUtil().setWidth(240),
                        ScreenUtil().setHeight(35))),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(Mycolor.button),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          titlePadding: EdgeInsets.all(25),
                          backgroundColor: Mycolor.background,
                          title: Text(
                            'Are you sure to cancel ?',
                            style: TextStyle(
                                color: Mycolor.maincolor,
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: CustomText('No')),
                                ElevatedButton(
                                    onPressed: () {
                                      AnimatedSnackBar.material(
                                              'Cancellation Requested',
                                              mobileSnackBarPosition: MobileSnackBarPosition.bottom,
                                              type:
                                                  AnimatedSnackBarType.success)
                                          .show(context);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => UserRequest(),
                                          ));
                                    },
                                    child: CustomText('Yes, Sure'))
                              ],
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    'Cancel Booking',
                    style: TextStyle(
                        color: Mycolor.maincolor,
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(Mycolor.maincolor),
                  elevation: MaterialStatePropertyAll(5),
                  fixedSize: MaterialStatePropertyAll(Size(
                      ScreenUtil().setWidth(240), ScreenUtil().setHeight(35))),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Mycolor.button),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Payment(),
                      ));
                },
                child: Text(
                  'Pay',
                  style: TextStyle(
                      color: Mycolor.maincolor,
                      fontFamily: 'Poppins',
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
