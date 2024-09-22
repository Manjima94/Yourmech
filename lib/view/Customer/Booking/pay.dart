// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  var Payment = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.background,
      appBar: AppBar(
        title: Text(
          'Select Payment Method',
          style: TextStyle(
              color: Mycolor.maincolor,
              fontFamily: 'Poppins',
              fontSize: 20.sp,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Mycolor.maincolor,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        clipBehavior: Clip.hardEdge,
        backgroundColor: Mycolor.background,
        toolbarHeight: 110,
        flexibleSpace: ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              color: Color.fromARGB(255, 255, 255, 255),
              alignment: Alignment.center,
              height: ScreenUtil().setHeight(150),
              width: double.infinity,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: ListView(
          children: <Widget>[
            RadioListTile(
              visualDensity: VisualDensity(vertical: 4),
              controlAffinity: ListTileControlAffinity.trailing,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/visa.png')),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Mycolor.maincolor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: CustomText('Visa/Master'),
                  ),
                ],
              ),
              value: 1,
              groupValue: Payment,
              onChanged: (value) {
                setState(() {
                  Payment = value!;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: RadioListTile(
                visualDensity: VisualDensity(vertical: 4),
                controlAffinity: ListTileControlAffinity.trailing,
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 60.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage('assets/icons/g pay.png')),
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Mycolor.maincolor)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: CustomText('Google Pay'),
                    ),
                  ],
                ),
                value: 2,
                groupValue: Payment,
                onChanged: (value) {
                  setState(() {
                    Payment = value!;
                  });
                },
              ),
            ),
            RadioListTile(
              visualDensity: VisualDensity(vertical: 4),
              controlAffinity: ListTileControlAffinity.trailing,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            image: AssetImage('assets/icons/paypal.png')),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Mycolor.maincolor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: CustomText('  Paypal     '),
                  ),
                ],
              ),
              value: 3,
              groupValue: Payment,
              onChanged: (value) {
                setState(() {
                  Payment = value!;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 200),
              child: RadioListTile(
                visualDensity: VisualDensity(vertical: 4),
                controlAffinity: ListTileControlAffinity.trailing,
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 60.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage('assets/icons/cash.png')),
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Mycolor.maincolor)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: CustomText('Cash on hand'),
                    ),
                  ],
                ),
                value: 4,
                groupValue: Payment,
                onChanged: (value) {
                  setState(() {
                    Payment = value!;
                  });
                },
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStatePropertyAll(Mycolor.maincolor),
                elevation: MaterialStatePropertyAll(5),
                fixedSize: MaterialStatePropertyAll(Size(
                    ScreenUtil().setWidth(250), ScreenUtil().setHeight(45))),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(Mycolor.button),
              ),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => Payment(),
                //     ));
              },
              child: Text(
                'Pay',
                style: TextStyle(
                    color: Mycolor.maincolor,
                    fontFamily: 'Poppins',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
