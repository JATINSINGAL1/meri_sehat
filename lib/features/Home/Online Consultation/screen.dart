import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meri_sehat/features/Home/Online%20Consultation/cards/card1.dart';
import 'package:meri_sehat/features/Home/Online%20Consultation/cards/card2.dart';
import 'package:meri_sehat/features/Home/Online%20Consultation/cards/card3.dart';
import 'package:meri_sehat/features/Home/Online%20Consultation/cards/card5.dart';

class OnlineConsultation extends StatelessWidget {
  const OnlineConsultation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title: const Text('New Consultation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue[200],
                        ),
                        width: double.infinity,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Arsh Bajaj",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text("Mobile: 9872103264"),
                            Text("Patient Id: USR-232"),
                            Text("Consultation Id: 0"),
                            Text("Address: 1094, Bajaj Street"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Completion Score: 15%"),
                      const SizedBox(
                        height: 5,
                      ),
                      const LinearProgressIndicator(
                        value: 0.2,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Is it a follow-up consultation *",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const CurrentHealthRecord(),  
              const ActiveMedication(),
              const ClinicalExamination(),
              const Doctor(),

            ],
          ),
        ),
      ),
    );
  }
}
