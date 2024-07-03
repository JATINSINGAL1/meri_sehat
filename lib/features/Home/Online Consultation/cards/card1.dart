import 'package:flutter/material.dart';

class CurrentHealthRecord extends StatelessWidget {
  const CurrentHealthRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 16),
        child: ListTile(
          title: Text(
            "Current Health Record",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            child: Center(
                child: Text("2",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
          ),
          trailing: Icon(
            Icons.remove_red_eye,
            size: 32,
          ),
        ),
      ),
    );
  }
}
