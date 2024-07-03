import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meri_sehat/constant/imagestrings.dart';
import 'package:meri_sehat/features/Authentication/forgetpassword.dart';
import 'package:meri_sehat/features/Home/homescreen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
            // login methods
            DefaultTabController(
                length: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: 300,
                  child: Column(
                    children: [
                      const TabBar(tabs: [
                        Tab(
                          child: Text("OTP"),
                        ),
                        Tab(
                          child: Text("PASSWORD"),
                        ),
                      ]),
                      SizedBox(
                        width: 300,
                        height: 250,
                        child: TabBarView(children: [
                          Container(
                            color: Colors.red,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Form(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
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
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: "Password*",
                                      suffixIcon: Icon(Icons.password_rounded)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                 TextButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return const ForgetPasswordPage();
                                  },));
                                },child: Text("Forgot Password?")),
                              ],
                            )),
                          ),
                        ]),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            // sign in button
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
                child: const Text("SIGN IN")),
            const SizedBox(
              height: 20,
            ),
            const Text("OR"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text("REGISTER AS NEW USER"))
          ],
        ),
      ),
    );
  }
}
