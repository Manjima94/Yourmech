// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yourmech/controller/Providers/DateTimepicker.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_button.dart';
import 'package:yourmech/model/widget/custom_text.dart';

class Mechinfo extends StatefulWidget {
  const Mechinfo({super.key});

  @override
  State<Mechinfo> createState() => _MechinfoState();
}

class _MechinfoState extends State<Mechinfo> {
  var dateController = TextEditingController();
  var timecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mycolor.background,
        appBar: AppBar(
          centerTitle: true,
          clipBehavior: Clip.hardEdge,
          backgroundColor: Mycolor.background,
          toolbarHeight: 80,
          flexibleSpace: ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                alignment: Alignment.center,
                height: ScreenUtil().setHeight(80),
                width: double.infinity,
              )),
        ),
        body: Padding(
            padding: EdgeInsets.only(left: 30, top: 20, right: 30),
            child: Consumer<DateTimeProvider>(
                builder: (context, dateTimeProvider, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 60,
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.person,
                              color: Mycolor.maincolor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(7),
                            child: Icon(
                              Icons.call,
                              color: Mycolor.maincolor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.miscellaneous_services,
                              color: Mycolor.maincolor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 10, bottom: 7, left: 10),
                              child: CustomText('Name'),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 7, bottom: 7, left: 10),
                              child: CustomText('Contact'),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 7, bottom: 8, left: 10),
                              child: CustomText('Services'),
                            ),
                          ]),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Divider(
                      color: Mycolor.maincolor,
                      height: 40,
                    ),
                  ),
                  CustomText('Enter your booking details :\n'),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'What service do you need ?',
                        hintStyle: TextStyle(fontFamily: 'Poppins'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Consumer<DateTimeProvider>(
                          builder: (context, dateTimeProvider, child) {
                        final TextEditingController dateController =
                            TextEditingController(
                          text: dateTimeProvider.selectedDate != null
                              ? DateFormat('dd-MM-yyyy')
                                  .format(dateTimeProvider.selectedDate!)
                              : '',
                        );
                        return TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: IconButton(
                                  onPressed: () {
                                    context
                                        .read<DateTimeProvider>()
                                        .pickDate(context);
                                  },
                                  icon: Icon(Icons.calendar_month_rounded)),
                              hintText: ' Date',
                              hintStyle: TextStyle(fontFamily: 'Poppins'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none),
                              fillColor: Colors.white,
                              filled: true),
                        );
                      })),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Consumer<DateTimeProvider>(
                      builder: (context, dateTimeProvider, child) {
                        final TextEditingController timeController =
                            TextEditingController(
                          text: dateTimeProvider.selectedTime != null
                              ? dateTimeProvider.selectedTime!.format(context)
                              : '',
                        );

                        return TextFormField(
                          controller: timeController,
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: 'Time',
                            prefixIcon: IconButton(
                              onPressed: () {
                                context
                                    .read<DateTimeProvider>()
                                    .pickTime(context);
                              },
                              icon: Icon(Icons.access_time),
                            ),
                            hintStyle: TextStyle(fontFamily: 'Poppins'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        );
                      },
                    ),
                  ),
                  Center(
                      child: Button.elevatedButton(
                          text: 'Request',
                          onPressed: () {
                            AnimatedSnackBar.material('Booking Requested',
                                    mobileSnackBarPosition:
                                        MobileSnackBarPosition.bottom,
                                    type: AnimatedSnackBarType.success)
                                .show(context);
                          }))
                ],
              );
            })));
  }
}
