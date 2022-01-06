import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(hintText: 'Name'),
            ),
            TextField(
              controller: agecontroller,
              decoration: InputDecoration(hintText: 'Age'),
            ),
            ElevatedButton(
                onPressed: () {
                  FirebaseFirestore.instance.collection('data').add({
                    'name': namecontroller.text,
                    'age': agecontroller.text,
                  });
                },
                child: Text('Update')),
            Expanded(
              child: StreamBuilder(
                  stream:
                      FirebaseFirestore.instance.collection('data').snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return ListView(
                        children: snapshot.data!.docs.map((document) {
                          return ListTile(
                            title: Text(
                              document['name'],
                              textScaleFactor: 2,
                            ),
                            trailing: Text(
                              document['age'].toString(),
                              textScaleFactor: 2,
                            ),
                          );
                        }).toList(),
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
