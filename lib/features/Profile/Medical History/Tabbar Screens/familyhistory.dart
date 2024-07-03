import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FamilyHistory extends StatelessWidget {
  const FamilyHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Column(
                  children: [
                    Wrap(
                      children: List.generate(
                        10, (index) {
                          return Chip(label: Text("jatin"));
                        },
                          ),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("SUBMIT"))
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
