import 'package:flutter/material.dart';

class AbhaCard extends StatefulWidget {
  const AbhaCard({super.key});

  @override
  State<AbhaCard> createState() => _AbhaCardState();
}

class _AbhaCardState extends State<AbhaCard> {
  bool? _value = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Do you have a ABHA No ?",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            // radio button
            Row(
              children: [
                Radio(
                  value: true,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                const Text("Yes"),
                const SizedBox(
                  width: 5,
                ),
                Radio(
                  value: false,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                const Text("No"),
              ],
            ),

            _value == false
                ? Column(
                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        "first you can create your abha no. then you can use teleconsultation.",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                                "Create ABHA with Adhar No.")),
                                                TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                                "Create ABHA with Mobile No.")),
                                                TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                                "Create ABHA with Adhar No.")),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: const Text("CREATE ABHA No")),
                      )
                    ],
                  )
                : Form(
                    child: Column(
                    children: [
                      TextFormField(),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("XYZ"),
                        ),
                      )
                    ],
                  ))
          ],
        ),
      ),
    );
  }
}
