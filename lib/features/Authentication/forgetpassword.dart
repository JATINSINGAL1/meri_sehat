import 'package:flutter/material.dart';
import 'package:meri_sehat/constant/imagestrings.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 64,
            ),
            // logo
            Image.asset(
              logo,
              scale: 3,
            ),
            // forget Password 
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.sizeOf(context).width-40,
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 10,),
                  DropdownButtonFormField(
                      decoration: const InputDecoration(
                          labelText: "Select Role *"),
                      items: [
                        'Patient',
                        'Doctor',
                        'Hospital',
                        'lab',
                        'Asha_ANM'
                      ]
                          .map((e) => DropdownMenuItem(
                              value: e, child: Text(e)))
                          .toList(),
                      onChanged: (value) {
                        FocusScope.of(context).nextFocus();
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Mobile or Email or Abha No."),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                 
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Send OTP"),
                ],
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            // sign in button
            ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text("SUBMIT")),
            
          ],
        ),
      ),
    );
  }
}
