import 'package:flutter/material.dart';

class ClinicalExamination extends StatelessWidget {
  const ClinicalExamination({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              width: double.maxFinite,
              height: 280,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      topLeft: Radius.circular(5))),
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.close)),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                              child: Text(
                            "Select",
                            style: TextStyle(fontSize: 20),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Manually", style: TextStyle(fontSize: 18)),
                          Divider(),
                          Text("Vitals Face", style: TextStyle(fontSize: 18)),
                          Divider(),
                          Text("Vitals Finger", style: TextStyle(fontSize: 18)),
                          Divider(),
                          Text("ASHA+", style: TextStyle(fontSize: 18)),
                          Divider(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: const Card(
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 16),
          child: ListTile(
            title: Text(
              "Clinical Examination",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Center(
                  child: Text("4",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600))),
            ),
            trailing: Icon(
              Icons.remove_red_eye,
              size: 32,
            ),
          ),
        ),
      ),
    );
  }
}
