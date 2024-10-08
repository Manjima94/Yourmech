// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yourmech/controller/User/Signup.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_button.dart';
import 'package:yourmech/model/widget/custom_text.dart';
import 'package:yourmech/model/widget/custom_textfield.dart';
import 'package:yourmech/view/Customer/Login/login.dart';

class UserSignup extends StatefulWidget {
  const UserSignup({super.key});

  @override
  State<UserSignup> createState() => _UserSignupState();
}

class _UserSignupState extends State<UserSignup> {
  final userSignupController = UserSignupController();
  final formkey = GlobalKey<FormState>();
  var useremail = TextEditingController();
  var userpassword = TextEditingController();
  var username = TextEditingController();
  var usermobile = TextEditingController();
  var userlocation = TextEditingController();

  Future<void> signupuser() async {
    if (formkey.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: useremail.text, password: userpassword.text);
        String useruid = userCredential.user!.uid;
        await FirebaseFirestore.instance
            .collection('Customers')
            .doc(useruid)
            .set({
          'Username': username.text,
          'Useremail': useremail.text,
          'Userpassword': userpassword.text,
          'Userlocation': userlocation.text,
          'Usermobile': usermobile.text,
          'Useruid': useruid
        });

        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setString('Useruid', useruid);

        print('signed up successfully!');
      } catch (e) {
        print('Failed to sign up : $e'); 
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Form(
          key: formkey,
          child: Column(children: [
            ClipPath(
              clipper: WaveClipperOne(flip: true),
              clipBehavior: Clip.hardEdge,
              child: Image(
                image: const AssetImage('assets/images/book.jpg'),
                width: ScreenUtil().setWidth(double.infinity),
                fit: BoxFit.cover,
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(right: 50.0, top: 0, bottom: 0.r),
            //   child: Text(
            //     'Create Your Account...',
            //     style: TextStyle(
            //         fontFamily: 'Poppins',
            //         fontSize: 23.sp,
            //         color: Mycolor.maincolor,
            //         fontWeight: FontWeight.w500),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 40.r),
              child: SizedBox(
                width: ScreenUtil().setWidth(300),
                height: ScreenUtil().setHeight(50),
                child: CustomTextFormField(
                  controller: username,
                  hintText: 'Name',
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'enter a valid name';
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.person,
                      color: const Color.fromARGB(255, 55, 22, 115),
                      size: 23.r),
                  fillcolor: Mycolor.textfield,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 15.r),
              child: SizedBox(
                width: ScreenUtil().setWidth(300),
                height: ScreenUtil().setHeight(50),
                child: CustomTextFormField(
                  controller: usermobile,
                  hintText: 'Mobile',
                  validator: (value) {
                    if (value!.isEmpty || value.length != 10) {
                      return 'Enter a valid phone number';
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.call,
                      color: const Color.fromARGB(255, 55, 22, 115),
                      size: 23.r),
                  fillcolor: Mycolor.textfield,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 15.r),
              child: SizedBox(
                width: ScreenUtil().setWidth(300),
                height: ScreenUtil().setHeight(50),
                child: CustomTextFormField(
                  controller: userlocation,
                  hintText: 'Location',
                  validator: (value) {
                    if (value == null) {
                      return 'Required';
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
              padding: EdgeInsets.only(left: 0, top: 15.r),
              child: SizedBox(
                width: ScreenUtil().setWidth(300),
                height: ScreenUtil().setHeight(50),
                child: CustomTextFormField(
                  controller: useremail,
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
              padding: EdgeInsets.only(bottom: 40, top: 15.r),
              child: SizedBox(
                width: ScreenUtil().setWidth(300),
                height: ScreenUtil().setHeight(50),
                child: CustomTextFormField(
                  controller: userpassword,
                  hintText: 'Password',
                  validator: (value) {
                    if (value == null) {
                      return 'Enter a valid password';
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.car_rental,
                      color: Color.fromARGB(255, 55, 22, 115), size: 30.r),
                  fillcolor: Mycolor.textfield,
                ),
              ),
            ),
            Button.elevatedButton(
                text: 'SIGNUP',
                onPressed: () {
                  signupuser();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserLogin(),
                      ));
                }),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserLogin(),
                      ));
                },
                child: CustomText('Already have an Account? Login'))
          ]),
        ),
      ),
    ));
  }
}
