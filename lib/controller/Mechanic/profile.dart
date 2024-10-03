// ignore_for_file: avoid_print

import 'package:flutter/material.dart';


class Profilecontroller {
  final mechnameController = TextEditingController();
  final mechemailController = TextEditingController();
  final mechpaswordController = TextEditingController();
  final mechphoneController = TextEditingController();
  final mechfileController = TextEditingController();
  final mechlocationController = TextEditingController();
  final mechshopnameController = TextEditingController();
  final mechtyreController = TextEditingController();

  Future<void> fetchmechanicdetail(BuildContext context) async {
    try {
  
    // Mechanic? mechanic =
    //     await Mechanic.fetchmechanicdetail();
    // if (mechanic != null) {
    //   mechnameController.text = mechanic.mechName;
    //   mechemailController.text = mechanic.mechEmail;
    //   mechpaswordController.text = mechanic.mechPassword;
    //   mechphoneController.text = mechanic.mechMobile;
    //   mechfileController.text = mechanic.mechFile;
    //   mechlocationController.text = mechanic.mechLocaion;
    //   mechshopnameController.text = mechanic.mechshopname;
    //   mechtyreController.text = mechanic.dropdownvalue;
    // } else {
    //   print('Error fetching mechanic details');
    // }
        
    } catch (e) {
        print('Error fetching mechanic details');
    }
  }

  void updateprofile({required BuildContext context, required TextEditingController nameController, required TextEditingController phoneController, required TextEditingController locationController, required String name}) {}
}
