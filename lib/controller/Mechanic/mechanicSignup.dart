import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yourmech/model/Mechanic/signup.dart';

class MechanicSignupController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signupMechanic(MechanicSignuModel mechanic) async {
    try {
      
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: mechanic.email,
        password: mechanic.password,
      );

      String mechanicuid = userCredential.user!.uid;

     
      await _firestore.collection('Mechanics').doc(mechanicuid).set({
        ...mechanic.toMap(),
        'Mechanicuid': mechanicuid,
      });

     
      SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.setString('Mechanicuid', mechanicuid);

      return 'Success';
    } catch (e) {
      return 'Signup failed: $e';
    }
  }
}
