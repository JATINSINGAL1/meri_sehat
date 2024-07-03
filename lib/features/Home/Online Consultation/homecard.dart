// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:meri_sehat/features/Home/Online%20Consultation/screen.dart';

import '../../../constant/imagestrings.dart';

class OnlineConsultationCard extends StatelessWidget {
  const OnlineConsultationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const OnlineConsultation();
      },));
    },
    child: Card(
      color: const Color.fromRGBO(223, 233, 255, 1),
      child: Stack(
        children: [
          Image.asset(
            consulatationLogo,
            width: double.infinity,
            height: 170,
          ),
          const Positioned(top: 10, child: Text("Online Consulation")),
          const Positioned(bottom: 10, child: Text("Click Here>")),
        ],
      ),
    ),
  );
  }
}