class MechanicSignuModel {
  String name;
  String email;
  String password;
  String mobile;
  String location;
  String shopName;
  String vehicleType;
  String file;

  MechanicSignuModel({
    required this.name,
    required this.email,
    required this.password,
    required this.mobile,
    required this.location,
    required this.shopName,
    required this.vehicleType,
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return {
      'MechName': name,
      'MechEmail': email,
      'MechPassword': password,
      'MechMobile': mobile,
      'MechLocation': location,
      'MechShopname': shopName,
      'vehicleType': vehicleType,
      'MechFile': file,
    };
  }

  createUserWithEmailAndPassword({required String email, required String password}) {}
}
