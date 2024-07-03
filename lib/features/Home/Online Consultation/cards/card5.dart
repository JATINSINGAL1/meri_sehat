import 'package:flutter/material.dart';

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        
      },
      child: const Card(
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 16),
          child: ListTile(
            title: Text(
              "Doctor",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Center(
                  child: Text("6",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
            ),
            
          ),
        ),
      ),
    );
  }
}