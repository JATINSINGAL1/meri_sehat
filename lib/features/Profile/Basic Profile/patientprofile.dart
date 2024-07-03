import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meri_sehat/features/Profile/Basic%20Profile/controller/profile_provider.dart';
import 'package:provider/provider.dart';

class PatientProfile extends StatelessWidget {
  const PatientProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Patient Profile"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Consumer<ProfileProvider>(
        builder: (context, controller, child) =>
            PageView(controller: controller.pageController, children: const [
          PersonalInfo(),
          Address(),
        ]),
      ),
    );
  }
}

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileProvider>(
      builder: (context, contoller, child) => Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            /// image of user
            TextFormField(
              controller: contoller.firstName,
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
                      controller: contoller.dateTime,
                      readOnly: true,
                  onTap: () {
                    DateTime daytime;
                    // contoller.setDate();
                     
                      
                       DatePickerDialog(
                          
                          restorationId: 'date_picker_dialog',
                          initialEntryMode: DatePickerEntryMode.calendarOnly,
                          // initialDate: daytime,
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2022),
                        );

                     
                    
                    // print(daytime.toString());
                  },
                  decoration:
                      const InputDecoration(labelText: "DOB (DD/MM/YYYY)",suffixIcon: Icon(Icons.calendar_month_rounded)),
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
                          .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)))
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
            

            ElevatedButton(
                onPressed: () {
                  contoller.update();
                },
                child: const Text("NEXT"))
          ],
        ),
      ),
    );
  }
}

class Address extends StatelessWidget {
  const Address({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileProvider>(
      builder: (context, controller, child) => Padding(
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
                ]
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
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
                ElevatedButton(
                    onPressed: () {
                      controller.back();
                    },
                    child: const Text("BACK")),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("SUBMIT")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
