import 'package:flutter/material.dart';

class ActiveMedication extends StatelessWidget {
  const ActiveMedication({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                     Padding(
                      padding: EdgeInsets.all(8.0),
                      child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.close)),
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Medicine*"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: DropdownButtonFormField(
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
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: DropdownButtonFormField(
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
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
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
                          Row(
                            children: [
                              Flexible(
                                child: DropdownButtonFormField(
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
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: DropdownButtonFormField(
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
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: const Text("SUBMIT")),
                        ],
                      ),
                    )
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
              "Active Medication",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Center(
                  child: Text("3",
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
