import 'dart:convert';
import 'package:ab02012/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LetsTestHTTP(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LetsTestHTTP extends StatefulWidget {
  const LetsTestHTTP({Key? key}) : super(key: key);

  @override
  _LetsTestHTTPState createState() => _LetsTestHTTPState();
}

class _LetsTestHTTPState extends State<LetsTestHTTP> {
  
  Future getRequest() async {
    final response =
        await get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var responseData = json.decode(response.body);

    List users = [];

    for (var index in responseData) {
      User user = User(
          name: index['name'],
          username: index['username'],
          email: index['email'],
          phone: index['phone']);

      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getRequest(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return CircularProgressIndicator();
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color:  Colors.green),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            snapshot.data[index].name,
                            textScaleFactor: 2,
                          ),
                          Text(
                            snapshot.data[index].username,
                          ),
                          Text(
                            snapshot.data[index].email,
                          ),
                          Text(
                            snapshot.data[index].phone,
                          ),
                        ],
                      ),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}