import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginmech {
  var mechanicemail = TextEditingController();
  var mechanicpassword = TextEditingController();
  bool isloading = false;

  // Method for showing loading dialog
  void _showLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevents user from dismissing dialog
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  // Method for hiding loading dialog
  void _hideLoading(BuildContext context) {
    Navigator.of(context).pop(); // Closes the loading dialog
  }

  // Mechanic login method
  Future<void> mechLogin(BuildContext context) async {
    // Validate form inputs before making any request
    if (mechanicemail.text.isEmpty || mechanicpassword.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: Text('Please enter both email and password.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    try {
      // Show loading indicator
      _showLoading(context);
      isloading = true;

      // Query Firestore for mechanic with matching email and password
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('Mechanics')
          .where('MechEmail', isEqualTo: mechanicemail.text.trim())
          .where('MechPassword', isEqualTo: mechanicpassword.text.trim())
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        // Mechanic found in Firestore
        var mechanicData =
            querySnapshot.docs.first.data() as Map<String, dynamic>;
        var mechid = mechanicData['uid'];

        if (mechid != null) {
          // Save mechanic UID in SharedPreferences
          SharedPreferences pref = await SharedPreferences.getInstance();
          await pref.setString('uid', mechid);

          // Show success message (Optional)
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Login Successful!'),
            backgroundColor: Colors.green,
          ));

          // Optionally navigate to another screen after login
          // Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
        }
      } else {
        // Show invalid credentials dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Invalid Credentials'),
              content: Text('Please enter a valid email and password.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      // Show error dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Login Error'),
            content: Text('An error occurred: $e'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      print('Login Error: $e');
    } finally {
      // Hide loading indicator
      _hideLoading(context);
      isloading = false;
    }
  }
}
