import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';

class CustomHead extends StatelessWidget {
  final String text;

  const CustomHead(this.text, Color maincolor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32.spMin,
        fontWeight: FontWeight.w500,
        color: Mycolor.maincolor,
        fontFamily: 'Poppins',
      ),
    );
  }
}
