import 'package:flutter/material.dart';

import '../../constant/imagestrings.dart';

class NewPatient extends StatefulWidget {
  const NewPatient({super.key});

  @override
  State<NewPatient> createState() => _NewPatientState();
}

class _NewPatientState extends State<NewPatient> {
   bool _visible= true;
  @override
  Widget build(BuildContext context) {
   
    clickAnimation()async{
     
      setState(() {
        _visible=!_visible;
      });
      await Future.delayed(Duration(seconds: 1));
       setState(() {
        _visible=true;
      });
      await Future.delayed(Duration(milliseconds: 200));
    }
    return Expanded(
      child: GestureDetector(
          onTap: ()async {
             await clickAnimation();
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  backgroundColor: Colors.cyan[200],
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Patient Registeration",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Mobile No."),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "First Name"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Last Name"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("SUBMIT"))
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Expanded(
              child: AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 400),
                child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    
                    child: Image.asset(newpatient)
                    ),
              ))),
    );
  }
}
