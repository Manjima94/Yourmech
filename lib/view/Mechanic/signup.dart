// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yourmech/controller/Mechanic/mechanicSignup.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_button.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/model/widget/custom_textfield.dart';
import 'package:yourmech/view/Mechanic/Login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String? dropdownvalue = '2 tyre';
  var items = [
    '2 tyre',
    '4 tyre',
    'Both',
  ];
  final mechanicSignupController = MechanicSignupController();
  final formKey = GlobalKey<FormState>();
  var mechemail = TextEditingController();
  var mechpassword = TextEditingController();
  var mechname = TextEditingController();
  var mechmobile = TextEditingController();
  var mechlocation = TextEditingController();
  var mechshopname = TextEditingController();
  late String tyre;

  @override
  

  Future<void> signupmechanic() async {
    if (formKey.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: mechemail.text, password: mechpassword.text);
        String mechuid = userCredential.user!.uid;
        await FirebaseFirestore.instance
            .collection('mechanics')
            .doc(mechuid)
            .set({
          'name': mechname.text,
          'email': mechemail.text,
          'password': mechpassword.text,
          'mobile': mechmobile.text,
          'location': mechlocation.text,
          'shopname': mechshopname.text,
          'vehicle_type': tyre,
          'Mechuid': mechuid,
        });


         SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setString('Mechuid', mechuid);

        print('Mechanic signed up successfully!');
      } catch (e) {
        print('Failed to sign up mechanic: $e'); // Print detailed error message
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        title: Text(
          'Create Your Account',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 23.sp,
            color: Mycolor.maincolor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 40.r),
                  child: SizedBox(
                    width: ScreenUtil().setWidth(300),
                    height: ScreenUtil().setHeight(50),
                    child: CustomTextFormField(
                      controller: mechname,
                      hintText: 'Name',
                      validator: (value) {
                        if (value == null) {
                          return 'Invalid email entered';
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.person,
                          color: Color.fromARGB(255, 55, 22, 115), size: 23.r),
                      fillcolor: Mycolor.textfield,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 20.r),
                  child: SizedBox(
                    width: ScreenUtil().setWidth(300),
                    height: ScreenUtil().setHeight(50),
                    child: CustomTextFormField(
                      controller: mechmobile,
                      hintText: 'Mobile',
                      validator: (value) {
                        if (value == null) {
                          return 'Incorrect password';
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.call,
                          color: Color.fromARGB(255, 55, 22, 115), size: 23.r),
                      fillcolor: Mycolor.textfield,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 20.r),
                  child: SizedBox(
                    width: ScreenUtil().setWidth(300),
                    height: ScreenUtil().setHeight(50),
                    child: CustomTextFormField(
                      controller: mechlocation,
                      hintText: 'Location',
                      validator: (value) {
                        if (value == null) {
                          return 'Incorrect password';
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.location_on_rounded,
                          color: Color.fromARGB(255, 55, 22, 115), size: 23.r),
                      fillcolor: Mycolor.textfield,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 20.r),
                  child: SizedBox(
                    width: ScreenUtil().setWidth(300),
                    height: ScreenUtil().setHeight(50),
                    child: CustomTextFormField(
                      controller: mechemail,
                      hintText: 'Email',
                      validator: (value) {
                        if (value == null) {
                          return 'Invalid email entered';
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.mail,
                          color: Color.fromARGB(255, 55, 22, 115), size: 23.r),
                      fillcolor: Mycolor.textfield,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 20.r),
                  child: SizedBox(
                    width: ScreenUtil().setWidth(300),
                    height: ScreenUtil().setHeight(50),
                    child: CustomTextFormField(
                      controller: mechpassword,
                      hintText: 'Password',
                      validator: (value) {
                        if (value == null) {
                          return 'Incorrect password';
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.lock,
                          color: Color.fromARGB(255, 55, 22, 115), size: 23.r),
                      fillcolor: Mycolor.textfield,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 0.r, top: 20.r),
                  child: SizedBox(
                    width: ScreenUtil().setWidth(300),
                    height: ScreenUtil().setHeight(50),
                    child: CustomTextFormField(
                      controller: mechshopname,
                      hintText: 'Shopname ',
                      validator: (value) {
                        if (value == null) {
                          return 'Incorrect password';
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.store,
                          color: Color.fromARGB(255, 55, 22, 115), size: 23.r),
                      fillcolor: Mycolor.textfield,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 40.r, top: 20.r),
                  child: Container(
                    width: ScreenUtil().setWidth(300),
                    height: ScreenUtil().setHeight(50),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 225, 238),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton(
                      hint: CustomText('Vehicle type'),
                      padding: EdgeInsets.only(left: 40),
                      alignment: Alignment.center,
                      value: dropdownvalue,
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 40,
                        ),
                      ),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: CustomText(items),
                        );
                      }).toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalue = newvalue!;
                          tyre = dropdownvalue!;
                        });
                      },
                    ),
                  ),
                ),
                Button.elevatedButton(
                  text: 'SIGNUP',
                  onPressed: () {
                    signupmechanic();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MechLogin(),
                      ),
                    );
                  },
                ),
                TextButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      signupmechanic();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MechLogin(),
                        ),
                      );
                    }
                  },
                  child: CustomText('Already have an Account?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
