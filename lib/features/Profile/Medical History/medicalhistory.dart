import 'package:flutter/material.dart';
import 'package:meri_sehat/features/Profile/Medical%20History/Tabbar%20Screens/personalhistory.dart';

class MedicalHistory extends StatelessWidget {
  const MedicalHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Medical History"),
        ),
        body: Column(
          children: [
            const TabBar(tabs: [
              Tab(text: "Previous Medical"),
              Tab(text: "Medical History"),
              Tab(text: "Personal History"),
              Tab(text: "Family History"),
            ]),
            Expanded(
              child: TabBarView(children: [
                // Previous Medical 
                Container(
                  color: Colors.red,
                ),
                // Medical History
                Container(
                  color: Colors.green,
                ),
                // Personal History
                PersonalHistory(),
                // Family History
                Container(
                  color: Colors.yellow,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}