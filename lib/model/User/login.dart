import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserLoginModel {
  Future<Map<String, dynamic>?> userlogin(
      String useremail, String userpassword) async {
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('Customers')
          .where('UserEmail', isEqualTo: useremail)
          .where('UserPassword', isEqualTo: userpassword)
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        querySnapshot.docs.first.data() as Map<String, dynamic>;
      } else {
        return null;
      }
    } catch (e) {
      print('error: $e');
      
    }
    return null;
  }

  Future<void> saveuserdata(String userid) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('useruid', userid);
  }
}
