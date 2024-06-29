import 'package:flutter/material.dart';
import 'package:meri_sehat/features/Profile/Medical%20History/medicalhistory.dart';
import 'package:meri_sehat/features/Profile/dashboard.dart';
import 'package:meri_sehat/features/Profile/Basic%20Profile/patientprofile.dart';
import 'package:meri_sehat/features/Vitals/checkvitalsform.dart';
import 'package:meri_sehat/features/homescreen.dart';
import 'package:meri_sehat/onboardingscreen.dart';
import 'package:meri_sehat/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: EAppTheme.lighttheme,
      home:const MedicalHistory(),
    );
  }
}

