import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart'; // Import to access context and formKey

class Signupmech {
  final GlobalKey<FormState> formKey;
  final TextEditingController mechemail;
  final TextEditingController mechpassword;
  var mechname = TextEditingController();
  var mechmobile = TextEditingController();
  var mechlocation = TextEditingController();
  var mechpfile = TextEditingController();
  final BuildContext context; // To access context for SnackBar

  // Constructor to initialize required variables
  Signupmech({
    required this.formKey,
    required this.mechemail,
    required this.mechpassword,
    required this.context,
  });

  Future<void> signupMech() async {
    if (formKey.currentState!.validate()) {
      try {
        // Creating a new user in Firebase Authentication
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: mechemail.text,
          password: mechpassword.text,
        );
        String uid = userCredential.user!.uid;

        // Add user details to Firestore
        await FirebaseFirestore.instance.collection('Mechanics').doc(uid).set({
          'MechEmail': mechemail.text,
          'MechPassword': mechpassword.text,
          'MechMobile': mechmobile.text,
          'MechName': mechname.text,
          'MechLocation': mechlocation.text,
          'MechFile': mechpfile.text,
          'uid': uid,
        });

        // Store UID in shared preferences
        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setString('uid', uid);

        // Show success SnackBar
        AnimatedSnackBar.material(
          'Mechanic Signup Successful!',
          mobileSnackBarPosition: MobileSnackBarPosition.bottom,
          type: AnimatedSnackBarType.success,
        ).show(context);
      } catch (e) {
        // Show error SnackBar if signup fails
        AnimatedSnackBar.material(
          'Signup Failed: ${e.toString()}',
          mobileSnackBarPosition: MobileSnackBarPosition.bottom,
          type: AnimatedSnackBarType.error,
        ).show(context);
      }
    } else {
      // Show validation error SnackBar if form is not valid
      AnimatedSnackBar.material(
        'Please fill all fields correctly!',
        mobileSnackBarPosition: MobileSnackBarPosition.bottom,
        type: AnimatedSnackBarType.warning,
      ).show(context);
    }
  }
}
