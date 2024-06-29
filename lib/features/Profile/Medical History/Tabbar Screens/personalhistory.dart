import 'package:flutter/material.dart';

class PersonalHistory extends StatelessWidget {
  const PersonalHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Colors.red,
            ),
            padding: const EdgeInsets.symmetric(vertical: 3),
            width: double.infinity,
            child: const Text(
              " Part A: Risk Assessment",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          // Questions and there options
          Container(child: Column(children: [Text("1. What is your age?")],),)
        ],
      ),
    );
  }
}
