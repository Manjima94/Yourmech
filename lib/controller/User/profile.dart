
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yourmech/model/User/profile.dart';

class ProfileController {


  Future<ProfileModel?> fetchUserDetails() async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? userId = pref.getString('Useruid');
      print('sharedpreference userid : $userId');
      if (userId != null && userId.isNotEmpty) {
        DocumentSnapshot usersnapshot = await FirebaseFirestore.instance
            .collection('Customers')
            .doc(userId)
            .get();

        if (usersnapshot.exists) {
          return ProfileModel.fromsnapshot(usersnapshot);
        }
      }
    } catch (e) {
      // ignore: avoid_print
      print('cant get details: $e');
    }
    return null;
  }
  }

  Future<void> updateUserProfile(ProfileModel profileModel)async{
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? userId = pref.getString('Useruid');

      if(userId!=null &&userId.isNotEmpty){
         await FirebaseFirestore.instance
            .collection('Customers')
            .doc(userId)
            .update(profileModel.toMap());
      }
    } catch (e) {
      // ignore: avoid_print
      print('Error updating user profile: $e');
    }
   
}
