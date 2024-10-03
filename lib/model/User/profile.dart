import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileModel {
  String? userid;
  String? username;

  String? userphone;
  String? userlocation;
  // final FirebaseFirestore firestore = FirebaseFirestore.instance;

  ProfileModel(String? s, {this.userid, this.username, this.userphone, this.userlocation});

  ProfileModel.fromsnapshot(DocumentSnapshot snapshot) {
    userid = snapshot.id;
    username = snapshot['userName'];
    userphone = snapshot['userMobile'];
    userlocation = snapshot['userLocation'];
  }
  Map<String, dynamic> toMap() {
    return {
      'userName': username,
     
      'userMobile': userphone,
      'userLocation': userlocation,
    };
  }
}
