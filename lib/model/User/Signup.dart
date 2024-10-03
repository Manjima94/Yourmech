class UserSignupModel {
  String username;
  String useremail;
  String userpassword;
  String usermobile;
  String userlocation;

  UserSignupModel({
    required this.username,
    required this.useremail,
    required this.userpassword,
    required this.usermobile,
    required this.userlocation,
  });

  Map<String, dynamic> toMap() {
    return {
      'userName': username,
      'userEmail': useremail,
      'userPassword': userpassword,
      'userMobile': usermobile,
      'userLocation': userlocation,
    };
  }

  createUserWithEmailAndPassword({required String email, required String password}) {}
}
