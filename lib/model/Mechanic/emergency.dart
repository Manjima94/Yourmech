import 'package:cloud_firestore/cloud_firestore.dart';

class EmergencyDetail {
  final String name;
  final String service;
  final String vehicle;
  final String location;
  final String contact;

  EmergencyDetail({
    required this.name,
    required this.service,
    required this.vehicle,
    required this.location,
    required this.contact,
  });

  factory EmergencyDetail.fromFirestore(DocumentSnapshot doc) {
    return EmergencyDetail(
      name: doc['Name'] ?? '',
      service: doc['Service'] ?? '',
      vehicle: doc['Vehiclemodel'] ?? '',
      location: doc['Location'] ?? '',
      contact: doc['Phone'] ?? '',
    );
  }
}