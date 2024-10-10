// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_button.dart';
import 'package:yourmech/model/widget/custom_text.dart';

class EmergRequest extends StatefulWidget {

  EmergRequest({
    Key? key,
   
  }) : super(key: key);

  @override
  State<EmergRequest> createState() => _EmergRequestState();
}

class _EmergRequestState extends State<EmergRequest> {
  final _formKey = GlobalKey<FormState>();
  bool isSubmitting = false;

  late TextEditingController nameController;
  late TextEditingController vehicleModelController;
  late TextEditingController serviceController;
  late TextEditingController locationController;
  late TextEditingController phoneController;





  // ignore: non_constant_identifier_names
  Future<void> EmergencyRequest() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setState(() {
      isSubmitting = true;
    });

    try {
      await FirebaseFirestore.instance
          .collection('Emergency Request')
          .doc()
          .set({
        'Name': nameController.text,
        'Vehiclemodel': vehicleModelController.text,
        'Service': serviceController.text,
        'Location': locationController.text,
        'Phone': phoneController.text,
      });

      Navigator.pop(context);
    } catch (e) {
      AnimatedSnackBar.material('Failed to submit request: $e',
              mobileSnackBarPosition: MobileSnackBarPosition.bottom,
              type: AnimatedSnackBarType.error)
          .show(context);
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mycolor.background,
        appBar: AppBar(
          centerTitle: true,
          clipBehavior: Clip.hardEdge,
          backgroundColor: Mycolor.background,
          toolbarHeight: 40,
          flexibleSpace: ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                alignment: Alignment.center,
                height: ScreenUtil().setHeight(70),
                width: double.infinity,
              )),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 30.r, top: 20.r, right: 30.r),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText('Enter your details :\n'),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: 'Enter Your Name ',
                      hintStyle: TextStyle(fontFamily: 'Poppins'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      fillColor: Colors.white,
                      filled: true),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: TextFormField(
                    controller: vehicleModelController,
                    decoration: InputDecoration(
                        hintText: ' Vehicle model',
                        hintStyle: TextStyle(fontFamily: 'Poppins'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
                TextFormField(
                  controller: serviceController,
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
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: TextFormField(
                    controller: locationController,
                    decoration: InputDecoration(
                        hintText: ' Location',
                        hintStyle: TextStyle(fontFamily: 'Poppins'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                        hintText: 'Contact No',
                        hintStyle: TextStyle(fontFamily: 'Poppins'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20.r, top: 20),
                    child: Container(
                      height: 150.h,
                      width: 200.h,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_photo_alternate_outlined),
                        iconSize: 50,
                        color: Mycolor.maincolor,
                      ),
                    ),
                  ),
                ),
                Center(
                    child: Button.elevatedButton(
                        text: 'Send',
                        onPressed: () {
                          EmergencyRequest();
                          AnimatedSnackBar.material('emergency Requested',
                                  mobileSnackBarPosition:
                                      MobileSnackBarPosition.bottom,
                                  type: AnimatedSnackBarType.success)
                              .show(context);
                        }))
              ],
            ),
          ),
        ));
  }
}
