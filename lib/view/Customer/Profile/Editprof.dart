// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.background,
      appBar: AppBar(
        backgroundColor: Mycolor.background,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                  padding: EdgeInsets.only(bottom: 0, top: 19.r),
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
                SizedBox(height: 30.h),
                _buildTextField('Name'),
                SizedBox(height: 10.h),
                _buildTextField('Mobile'),
                SizedBox(height: 10.h),
                _buildTextField('Vehicle'),
                SizedBox(height: 10.h),
                _buildTextField('Location'),
                SizedBox(height: 20.h),
                ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(
                          ScreenUtil().setWidth(240),
                          ScreenUtil().setHeight(35))),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(Mycolor.button),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pop(context);
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
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return 'This field cannot be empty';
        //   }
        //   return null;
        // },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
        ),
      ),
    );
  }
}
