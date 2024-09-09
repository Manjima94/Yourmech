import 'package:flutter/material.dart';
import 'package:yourmech/model/style/color.dart';
import 'package:yourmech/model/widget/custom_text.dart';
class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
            ),
            CustomText('Name'),
            CustomText('Name@gmail.com'),
            Divider(
              color: Mycolor.maincolor,
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.call),
                      Padding(
                        padding: EdgeInsets.only(top: 20,bottom: 20),
                        child: Icon(Icons.location_on),
                      ),
                      Icon(Icons.commute),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(children: [
                    CustomText('Contact'),
                    Padding(
                      padding: EdgeInsets.only(top: 20,bottom: 20),
                      child: CustomText('Location'),
                    ),
                    CustomText('Vehicle')
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
