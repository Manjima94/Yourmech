// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_button.dart';
import 'package:yourmech/view/Mechanic/Profile/Mechprofile.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final _formKey = GlobalKey<FormState>();
  String? ddvalue;
  var vehicle = ['Two Wheeler', 'Four Wheeler'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 4,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(150.r),
            bottomRight: Radius.circular(150.r),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(0.r),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 0, top: 22.r),
                      child: Container(
                        height: ScreenUtil().setHeight(105),
                        decoration: BoxDecoration(
                            color: Mycolor.maincolor, shape: BoxShape.circle),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 0, top: 24.r),
                        child: CircleAvatar(
                          radius: 51.r,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                _buildTextField('Name'),
                SizedBox(height: 10.h),
                _buildTextField('Mobile'),
                SizedBox(height: 10.h),
                _buildTextField('Experience'),
                SizedBox(height: 10.h),
                _buildTextField('Shop Name'),
                SizedBox(height: 10.h),
                _buildVehicleTypeField(),
                SizedBox(height: 10.h),
                _buildTextField('Location'),
                SizedBox(height: 10.h),
                _buildTextField('Service'),
                SizedBox(height: 20.h),
                ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(
                          ScreenUtil().setWidth(250),
                          ScreenUtil().setHeight(30))),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: WidgetStatePropertyAll(Mycolor.button),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MechProfile(),
                          ),
                        );
                      }
                    },
                    child: Text(
                      'SAVE  CHANGES',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Mycolor.maincolor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText) {
    return SizedBox(
      width: 300.w,
      height: 44.h,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5.r),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
        ),
      ),
    );
  }

  Widget _buildVehicleTypeField() {
    return Container(
      width: 300.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 100.w,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field cannot be empty';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Type',
              ),
            ),
          ),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                iconEnabledColor: Colors.white,
                dropdownColor: Mycolor.maincolor,
                style: TextStyle(fontSize: 16.sp, color: Colors.redAccent),
                value: ddvalue,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 35.r,
                  color: Mycolor.maincolor,
                ),
                items: vehicle.map((String vehicle) {
                  return DropdownMenuItem<String>(
                    value: vehicle,
                    child: Text(
                      vehicle,
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    ddvalue = newValue;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
