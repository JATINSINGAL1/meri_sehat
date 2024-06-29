import 'package:flutter/material.dart';
import 'package:meri_sehat/constant/imagestrings.dart';

class UserDashBoard extends StatelessWidget {
  const UserDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Dashboard"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            width: double.maxFinite,
            color: Colors.red,
            child: const Row(
              children: [],
            ),
          ),
          // online consultation
          Container(
            margin: const EdgeInsets.all(8),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Patient Facility"),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                            child: Image.asset(basicprofile))),
                    Expanded(
                        child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                            child: Image.asset(medicalhistory))),
                    Expanded(
                        child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                            child: Image.asset(report))),
                  ],
                ),
                const Row(
                  children: [
                    Expanded(child: Center(child: Text("Basic Profile",style: TextStyle(fontWeight: FontWeight.w500),))),
                    Expanded(child: Center(child: Text("Medical History",style: TextStyle(fontWeight: FontWeight.w500),))),
                    Expanded(child: Center(child: Text("Report",style: TextStyle(fontWeight: FontWeight.w500),))),
                  ],
                ),
                SizedBox(height: 10,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
