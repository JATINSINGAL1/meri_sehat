import 'package:flutter/material.dart';
import 'package:meri_sehat/constant/list.dart';
import 'package:meri_sehat/features/Profile/Medical%20History/controller/medicalhistory_provider.dart';
import 'package:provider/provider.dart';

class FamilyHistory extends StatelessWidget {
  const FamilyHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MedicalHistoryProvider>(
      builder: (context, controller, child) => Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5))),
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.close)),
                        ),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: List.generate(
                            medicalProblem.length,
                            (index) {
                              return Chip(label: Text(medicalProblem[index]));
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: controller.familyHistory,
                          maxLines: 2,
                          maxLength: 1500,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              controller.update();
                              Navigator.pop(context);
                            },
                            child: const Text("SUBMIT"))
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: List.generate(
                medicalProblem.length,
                (index) => Column(
                      children: [
                        ListTile(
                          title: Text(medicalProblem[index]),
                          trailing: const Icon(Icons.check),
                        ),
                        const Divider(
                          height: 2,
                        ),
                      ],
                    )),
          ),
        ),
      ),
    );
  }
}
