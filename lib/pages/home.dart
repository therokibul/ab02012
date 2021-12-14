import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List userData = [];

  Future getData() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    var responseData = jsonDecode(response.body);

    setState(() {
      userData = responseData;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemCount: userData.length,
          itemBuilder: (context, index) {
            if (userData == null) {
              return CircularProgressIndicator();
            } else {
              return Card(
                child: Column(
                  children: [
                    Text('Name: ${userData[index]["name"]}'),
                    Text('UserName: ${userData[index]["username"]}'),
                    Text('PhoneNumber ${userData[index]["phone"]}'),
                  ],
                ),
              );
            }
          }),
    );
  }
}
