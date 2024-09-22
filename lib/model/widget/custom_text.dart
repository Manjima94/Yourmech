// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourmech/model/style/color.dart';

class CustomText extends StatelessWidget {
  final Color? color;
  final String text;

  const CustomText(
    this.text, {
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18.sp,
        color: Mycolor.maincolor,
        fontFamily: 'Poppins',
      ),
    );
  }
}


// class RPSCustomPainter extends CustomPainter{
  
//   @override
//   void paint(Canvas canvas, Size size) {
    
    

//   // Circle
  
//   Paint paint_stroke_1 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width*0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;
     
         
//     Path path_1 = Path();
//     path_1.moveTo(size.width*0.0416667,0);
//     path_1.quadraticBezierTo(size.width*0.0583333,0,size.width*0.3171583,size.height*0.0087429);
//     path_1.quadraticBezierTo(size.width*0.4258083,size.height*0.2508000,size.width*0.1714250,size.height*0.1306571);
//     path_1.cubicTo(size.width*0.0987250,size.height*0.0741714,size.width*0.0445167,size.height*0.1867857,size.width*-0.0098083,size.height*0.1401429);
//     path_1.cubicTo(size.width*-0.0098083,size.height*0.1115714,size.width*0.0125000,0,size.width*0.0416667,0);
//     path_1.close();

//     canvas.drawPath(path_1, paint_stroke_1);
  
    
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
  
// }
