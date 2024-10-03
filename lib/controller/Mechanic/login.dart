import 'package:yourmech/model/Mechanic/login.dart';

class MechanicLoginController {
  final MechanicLoginModel _mechanicLoginModel = MechanicLoginModel();
  Future<void> mechaniclogin(String mechemail, String mechpassword) async {
    var mechanicid =
        await _mechanicLoginModel.mechanicLogin(mechemail, mechpassword);
    if (mechanicid != null) {
     
      
      await _mechanicLoginModel.savemechanicdata(mechanicid);
      
    }else{
        print("Login failed, mechanic not found.");
    }
  }
}
