import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Query extends StatelessWidget {
  const Query({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 16),
        child: Column(
          children: [
            const ListTile(
              title: Text(
                "Query (Patient Problem)*",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Center(
                    child: Text("5",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600))),
              ),
              trailing: Icon(
                Icons.mic,
                size: 32,
              ),
            ),
            const TextField(
              maxLines: 3,
              maxLength: 500,
              decoration:
                  InputDecoration(labelText: "Query (Patient Problem)*"),
            ),
            ListTile(
              title: const Text("Give a consent for Old PHR."),
              trailing: CircleAvatar(
                backgroundColor: Colors.black87,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return const Report();
                      },
                    ));
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Meri Sehat"),
      ),
      body: Column(
        children: [
          ListTile(title: Text("Search"),trailing: Icon(Icons.search),),
          ListTile(
                  leading: Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  title: const Text("Select all"),
                ),
          Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            color: Colors.blue,
            child: const Text(
              "CDSS Report",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder:(context,index)=> ListTile(
                  leading: Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  title: const Text("Zini_PHR_USR-232_2024.pdf"),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            color: Colors.blue,
            child: const Text(
              "Vitals Report",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder:(context,index)=> ListTile(
                  leading: Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  title: const Text("Zini_PHR_USR-232_2024.pdf"),
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("SUBMIT"))
            ],
          ),
        ],
      ),
    );
  }
}
