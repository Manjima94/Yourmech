// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  final formKey = GlobalKey<FormState>();
  var mechemail = TextEditingController();
  var mechpassword = TextEditingController();
  var mechname = TextEditingController();
  var mechmobile = TextEditingController();
  var mechlocation = TextEditingController();
  var mechpfile = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: formKey,
              child: Column(children: [
               
                Padding(
                  padding: EdgeInsets.only(right: 50.0, top: 30, bottom: 0.r),
                  child: Text(
                    'Create Your Account',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 23.sp,
                        color: Mycolor.maincolor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                
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
                  padding: EdgeInsets.only(bottom: 40.r, top: 20.r),
                  child: SizedBox(
                    width: ScreenUtil().setWidth(300),
                    height: ScreenUtil().setHeight(50),
                    child: CustomTextFormField(
                      controller: mechpfile,
                      hintText: 'Upload ',
                      validator: (value) {
                        if (value == null) {
                          return 'Incorrect password';
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.attach_file,
                          color: Color.fromARGB(255, 55, 22, 115), size: 23.r),
                      fillcolor: Mycolor.textfield,
                    ),
                  ),
                ),
                Button.elevatedButton(
                    text: 'SIGNUP',
                    onPressed: () {
                       if (formKey.currentState?.validate() ?? false) {
                              print(mechname.text);
                              print(mechemail.text);
                              print(mechmobile.text);
                              print(mechpassword.text);
                            }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MechLogin(),
                          ));
                    }),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MechLogin(),
                          ));
                    },
                    child: CustomText('Already have an Account? Login'))
              ]),
            ),
          ),
        ));
  }
}
