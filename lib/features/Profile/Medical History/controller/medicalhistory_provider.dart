import 'package:flutter/material.dart';
import 'package:meri_sehat/constant/list.dart';

class MedicalHistoryProvider extends ChangeNotifier {
  TextEditingController familyHistory = TextEditingController();
  void update() {
    if (familyHistory.text.isNotEmpty) {
      medicalProblem.add(familyHistory.text.toString());
      familyHistory.clear();
    }
    notifyListeners();
  }
}
