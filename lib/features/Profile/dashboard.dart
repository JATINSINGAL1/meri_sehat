import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meri_sehat/constant/imagestrings.dart';
import 'package:meri_sehat/features/Profile/Basic%20Profile/patientprofile.dart';
import 'package:meri_sehat/features/Profile/Medical%20History/medicalhistory.dart';

class UserDashBoard extends StatelessWidget {
  const UserDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Dashboard"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          // adding patient
          Container(
            height: 80,
            width: double.maxFinite,
            color: Colors.white,
            child: ListView.builder(
              
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                const maxno= 5; 
                return Padding(
                  padding: EdgeInsets.all(4),
                  child:index!=maxno? CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.blue,
                    child: Text("$index"),
                  ):CircleAvatar(
            radius: 35,
            child: Icon(Icons.add),
                        ),
                );
              },
            ),
          ),
          // online consultation
                
          //Patient Facility
          Container(
            margin: const EdgeInsets.all(8),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  " Patient Facility",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    // Basic Profile
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return const PatientProfile();
                          },
                        ));
                      },
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              child: Image.asset(basicprofile)),
                          const Center(
                              child: Text(
                            "Basic Profile",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ))
                        ],
                      ),
                    )),
                    // Medical History
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return const MedicalHistory();
                          },
                        ));
                      },
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              child: Image.asset(medicalhistory)),
                          const Center(
                              child: Text(
                            "Medical History",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ))
                        ],
                      ),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 2),
                            child: Image.asset(report)),
                        const Center(
                            child: Text(
                          "Report",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ))
                      ],
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
