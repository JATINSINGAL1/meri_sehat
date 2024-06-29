import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PatientProfile extends StatelessWidget {
  const PatientProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Patient Profile"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: PageView(children: const [
        PersonalInfo(),
        Address(),
      ]),
    );
  }
}

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          /// image of user
          TextFormField(
            decoration: const InputDecoration(labelText: "First Name"),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: "Middle Name"),
          ),
          const SizedBox(
            height: 10,
          ),

          TextFormField(
            decoration: const InputDecoration(labelText: "Last Name"),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                decoration:
                    const InputDecoration(labelText: "DOB (DD/MM/YYYY)"),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: DropdownButtonFormField(
                    decoration: const InputDecoration(labelText: "Gender"),
                    items: [
                      'Male',
                      'Female',
                      'Other',
                    ]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (value) {}),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(labelText: "Mobile No."),
          ),
          const SizedBox(
            height: 10,
          ),

          TextFormField(
            readOnly: true,
            decoration: const InputDecoration(labelText: "Email"),
          ),
          const SizedBox(
            height: 10,
          ),

          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Adhar No."),
          ),
          const SizedBox(
            height: 10,
          ),

          ElevatedButton(onPressed: () {}, child: const Text("NEXT"))
        ],
      ),
    );
  }
}

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: "Address"),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButtonFormField(
              decoration: const InputDecoration(labelText: "Select State"),
              items: [
                'Andhra Pradesh',
                'Arunachal Pradesh',
                'Assam',
                'Bihar',
                'Chhattisgarh',
                'Goa',
                'Gujarat',
                'Haryana',
                'Himachal Pradesh',
                'Jammu and Kashmir',
                'Jharkhand',
                'Karnataka',
                'Kerala',
                'Madhya Pradesh',
                'Maharashtra',
                'Manipur',
                'Meghalaya',
                'Mizoram',
                'Nagaland',
                'Odisha',
                'Punjab',
                'Rajasthan',
                'Sikkim',
                'Tamil Nadu',
                'Telangana',
                'Tripura',
                'Uttarakhand',
                'Uttar Pradesh',
                'West Bengal',
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (value) {}),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Pincode"),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("BACK")),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("SUBMIT")),
            ],
          )
        ],
      ),
    );
  }
}
