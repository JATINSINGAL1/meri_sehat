// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meri_sehat/constant/imagestrings.dart';
import 'package:meri_sehat/constant/list.dart';
import 'package:meri_sehat/features/Vitals/checkvitalsform.dart';
import 'package:meri_sehat/features/newpatient.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        backgroundColor: Colors.blue[600],
        title: const Text(
          "Meri Sehat",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Color.fromRGBO(223, 250, 230, 1),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Deepak Patidar",
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            "9755777945",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Expanded(
                        child: CircleAvatar(
                          radius: 64,
                          child: Icon(
                            Icons.man_4,
                            size: 64,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                  child: Container(
                padding: EdgeInsets.all(8),
                child: GridView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Image.asset(app[index]);
                  },
                ),
              )),
              Card(
                color: Color.fromRGBO(223, 233, 255, 1),
                child: Stack(
                  children: [
                    Image.asset(
                      consulatationLogo,
                      width: double.infinity,
                      height: 170,
                    ),
                    Positioned(top: 10, child: Text("Online Consulation")),
                    Positioned(bottom: 10, child: Text("Click Here>")),
                  ],
                ),
              ),
              Card(
                color: Color.fromRGBO(240, 251, 223, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("you can create your\n Abha no."),
                          Text("More Info"),
                        ],
                      ),
                      Expanded(
                          child: Image.asset(
                        abhaLogo,
                      )),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return CheckVital();
                    },
                  ));
                },
                child: Card(
                  color: Color.fromRGBO(233, 247, 247, 1),
                  child: Stack(
                    children: [
                      Image.asset(
                        vital,
                        width: double.infinity,
                        height: 170,
                      ),
                      Positioned(top: 10, child: Text("Check Vitals")),
                      Positioned(bottom: 10, child: Text("Click Here")),
                    ],
                  ),
                ),
              ),
              Card(
                color: Color.fromRGBO(223, 233, 255, 1),
                child: Stack(
                  children: [
                    Image.asset(
                      consulatationLogo,
                      width: double.infinity,
                      height: 170,
                    ),
                    Positioned(top: 10, child: Text("Consulation List")),
                    Positioned(bottom: 10, child: Text("Past Consultation..")),
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    NewPatient(),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(patientlist))),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(hospital))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
