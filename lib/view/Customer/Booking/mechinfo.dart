// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart'; // For date formatting
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_button.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/view/Customer/Requests/requestinfo.dart';

class Mechinfo extends StatefulWidget {
  const Mechinfo({super.key});

  @override
  State<Mechinfo> createState() => _MechinfoState();
}

class _MechinfoState extends State<Mechinfo> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  TextEditingController serviceController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
TextEditingController vehicleController = TextEditingController();
  @override
  void dispose() {
    dateController.dispose();
    timeController.dispose();
    super.dispose();
  }

  Future<void> pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(3000),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
        dateController.text = DateFormat('dd-MM-yyyy')
            .format(pickedDate); // Format date as DD-MM-YYYY
      });
    }
  }

  Future<void> pickTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
        timeController.text =
            pickedTime.format(context); // Display selected time
      });
    }
  }

 Future<void> booking() async {
  try {
    await FirebaseFirestore.instance.collection('Booking Request').doc().set({
      'Service': serviceController.text,
      'Time': timeController.text,
      'Date': dateController.text,
      'Location': locationController.text,
      'Contact': phoneController.text,
      'Vehicle': vehicleController.text
    });
    
    // Navigate to BookRequestInfo with the data
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookRequestInfo(
          service: serviceController.text,
          vehicle: vehicleController.text,
          date: dateController.text,
          time: timeController.text,
          location: locationController.text,
          contact: phoneController.text,
        ),
      ),
    );
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
        toolbarHeight: 80,
        flexibleSpace: ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Container(
            color: Color.fromARGB(255, 255, 255, 255),
            alignment: Alignment.center,
            height: ScreenUtil().setHeight(100),
            width: double.infinity,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30, top: 20, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Divider(
                color: Mycolor.maincolor,
                height: 40,
              ),
            ),
            CustomText(
              'Enter your booking details :\n',
              size: 18.spMin,
            ),
            TextFormField(
              controller: serviceController,
              decoration: InputDecoration(
                hintText: 'What service do you need?',
                hintStyle: TextStyle(fontFamily: 'Poppins'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
   SizedBox(height: 20),
            TextFormField(
              controller: vehicleController,
              decoration: InputDecoration(
                hintText: 'Vehicle',
                hintStyle: TextStyle(fontFamily: 'Poppins'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: locationController,
              decoration: InputDecoration(
                hintText: 'Location',
                hintStyle: TextStyle(fontFamily: 'Poppins'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                hintText: 'Contact No',
                hintStyle: TextStyle(fontFamily: 'Poppins'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: dateController,
              readOnly: true,
              decoration: InputDecoration(
                hintText: 'Date',
                hintStyle: TextStyle(fontFamily: 'Poppins'),
                prefixIcon: IconButton(
                  onPressed: pickDate,
                  icon: Icon(Icons.calendar_month_rounded),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            // Time Picker Field
            TextFormField(
              controller: timeController,
              readOnly: true,
              decoration: InputDecoration(
                hintText: 'Time',
                hintStyle: TextStyle(fontFamily: 'Poppins'),
                prefixIcon: IconButton(
                  onPressed: pickTime,
                  icon: Icon(Icons.access_time),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Button.elevatedButton(
                text: 'Request',
                onPressed: () {
                  booking();
                  AnimatedSnackBar.material(
                    'Booking Requested',
                    mobileSnackBarPosition: MobileSnackBarPosition.bottom,
                    type: AnimatedSnackBarType.success,
                  ).show(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
