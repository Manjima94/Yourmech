// ignore_for_file: unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yourmech/model/Mechanic/signup.dart';
import 'package:yourmech/model/User/Signup.dart';

class UserSignupController {
  final FirebaseAuth _auth  = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signupUser(UserSignupModel userSignupModel) async {
    try {
   
      UserCredential userCredential =
          await _auth .createUserWithEmailAndPassword(
        email: userSignupModel.useremail,
        password: userSignupModel.userpassword,
      );
     

      String useruid = userCredential.user!.uid;

    
      await _firestore.collection('Customers').doc(useruid).set({
     ...userSignupModel.toMap(),
        'Useruid': useruid,
      });

      
      SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.setString('Useruid', useruid);

      return 'Success';
    } catch (e) {
      return 'Signup failed: $e';
    }
  }
}
