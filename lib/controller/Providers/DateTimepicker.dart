import 'package:flutter/material.dart';

class DateTimeProvider with ChangeNotifier {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  DateTime? get selectedDate => _selectedDate;
  TimeOfDay? get selectedTime => _selectedTime;

  void pickDate(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(3000),
    );
    if (date != null) {
      _selectedDate = date;
      notifyListeners();
    }
  }

  void pickTime(BuildContext context) async {
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (time != null) {
      _selectedTime = time;
      notifyListeners();
    }
  }
}
