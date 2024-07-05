import 'package:flutter/material.dart';

class CheckVital extends StatelessWidget {
  const CheckVital({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){Navigator.pop(context);},),
        backgroundColor: Colors.blue[600],
        title: const Text("Check Vitals"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
        
              child: Column(
            children: [
              TextFormField(keyboardType: TextInputType.number,decoration: const InputDecoration(labelText: "Heart Rate"),),
              TextFormField(decoration: const InputDecoration(labelText: "Heart Rate Variability"),),
              TextFormField(decoration: const InputDecoration(labelText: "Stress"),),
              TextFormField(decoration: const InputDecoration(labelText: "Respiratory Level"),),
              TextFormField(decoration: const InputDecoration(labelText: "O2 Level"),),
              TextFormField(decoration: const InputDecoration(labelText: "Temperature"),),
              TextFormField(decoration: const InputDecoration(labelText: "Blood Glucose"),),
              TextFormField(decoration: const InputDecoration(labelText: "Stethescope"),),
              TextFormField(decoration: const InputDecoration(labelText: "ECG"),),
              ElevatedButton(onPressed: (){}, child: Text(""))
            ],
          )),
        ),
      ),
    );
  }
}
