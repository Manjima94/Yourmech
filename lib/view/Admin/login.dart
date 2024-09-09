// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_button.dart';
import 'package:yourmech/model/widget/custom_textfield.dart';
import 'package:yourmech/view/Admin/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
                image: AssetImage('assets/images/mech.jpg'),
                width: double.infinity.w,
                fit: BoxFit.cover),
          
            Padding(
              padding: const EdgeInsets.only(right: 100, top: 20),
              child: Text(
                'Signin to continue...',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Mycolor.maincolor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 40),
              child: SizedBox(
                width: ScreenUtil().setWidth(300),
                height: ScreenUtil().setHeight(44),
                child: CustomTextFormField(
                  controller: email,
                  hintText: 'Email',
                  validator: (value) {
                    if (value == null) {
                      return 'Invalid email entered';
                    }
                    return null;
                  },
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Color.fromARGB(255, 55, 22, 115),
                    size: 23.r,
                  ),
                  fillcolor: Mycolor.textfield,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 20),
              child: SizedBox(
                width: ScreenUtil().setWidth(300),
                height: ScreenUtil().setHeight(44),
                child: CustomTextFormField(
                  controller: email,
                  hintText: 'Password',
                  validator: (value) {
                    if (value == null) {
                      return 'Invalid email entered';
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.lock,
                      color: Color.fromARGB(255, 55, 22, 115), size: 23),
                  fillcolor: Mycolor.textfield,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 80),
              child: Button.elevatedButton(
                  text: 'LOGIN',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminHome(),
                        ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
