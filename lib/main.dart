import 'package:flutter/material.dart';
import 'package:meri_sehat/features/Vitals/checkvitalsform.dart';
import 'package:meri_sehat/features/homescreen.dart';
import 'package:meri_sehat/onboardingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: OnBoardingScreen(),
    );
  }
}

