import 'package:flutter/material.dart';
import 'package:meri_sehat/features/Home/homescreen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            // Title
            // image
            // button
            SizedBox(
              width: 120,
              child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text("NEXT")),
            )
          ],
        ),
      ),
    );
  }
}
