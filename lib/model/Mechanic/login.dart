import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MechanicLoginModel {
  Future<String?> mechanicLogin(String mechemail, String mechpassword) async {
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('Mechanics')
          .where('Mechemail', isEqualTo: mechemail)
          .where('Mechpassword', isEqualTo: mechpassword)
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        var mechanicdata =
            querySnapshot.docs.first.data() as Map<String, dynamic>;
        return mechanicdata['Mechanicuid'] as String?;
      } else {
        return null;
      }
    } catch (e) {
      // ignore: avoid_print
      print('Error: $e');
      return null;
    }
  }

  Future<void> savemechanicdata(String mechanicid) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('mechanicuid', mechanicid);
  }
}
