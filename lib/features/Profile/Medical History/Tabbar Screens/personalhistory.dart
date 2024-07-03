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
          Container(
            width: double.maxFinite,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("1. What is your age? (incomplete years)"),
                // RadioListTile(value: 1, groupValue: groupValue, onChanged: onChanged)
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            width: double.maxFinite,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "2. Do you smoke or consume smokeless products such as gutka or khaini?"),
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            width: double.maxFinite,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("3. Do you consume alcohol daily?"),
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            width: double.maxFinite,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("4. Measurement of waist (in cm)"),
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            width: double.maxFinite,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "5. Do you undertake any physical activites for minimum of 150 minutes in a week?"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
