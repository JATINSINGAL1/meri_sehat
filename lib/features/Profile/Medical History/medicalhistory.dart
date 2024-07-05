import 'package:flutter/material.dart';
import 'package:meri_sehat/features/Profile/Medical%20History/Tabbar%20Screens/familyhistory.dart';
import 'package:meri_sehat/features/Profile/Medical%20History/Tabbar%20Screens/personalhistory.dart';
import 'package:meri_sehat/features/Profile/Medical%20History/Tabbar%20Screens/previousmedical.dart';

class MedicalHistory extends StatelessWidget {
  const MedicalHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.of(context).pop();}, icon: const Icon(Icons.arrow_back_ios)),
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
                const PreviousMedical(),
                // Medical History
                Container(
                  color: Colors.green,
                ),
                // Personal History
                const PersonalHistory(),
                // Family History
                const FamilyHistory(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
