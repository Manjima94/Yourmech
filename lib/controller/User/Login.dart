import 'package:yourmech/model/User/login.dart';

class UserLoginController {
  final UserLoginModel _userloginmodel = UserLoginModel();
  Future<void> loginuser(String useremail, String userpassword) async {
    var userdata = await _userloginmodel.userlogin(useremail, userpassword);

    if (userdata != null) {
      var userid = userdata['Useruid'];
      await _userloginmodel.saveuserdata(userid);
    }
  }
}
