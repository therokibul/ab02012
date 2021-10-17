import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('images/undraw.png'),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Victoria Robertson',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Text(
              'A mantra goes here',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Icon(Icons.flutter_dash_outlined,
                  size: 90, color: Colors.white),
              title: Text('Header'),
              subtitle: Text(
                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Icon(Icons.flutter_dash_outlined,
                  size: 90, color: Colors.white),
              title: Text('Header'),
              subtitle: Text(
                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Icon(Icons.flutter_dash_outlined,
                  size: 90, color: Colors.white),
              title: Text('Header'),
              subtitle: Text(
                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Icon(Icons.flutter_dash_outlined,
                  size: 90, color: Colors.white),
              title: Text('Header'),
              subtitle: Text(
                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Icon(Icons.flutter_dash_outlined,
                  size: 90, color: Colors.white),
              title: Text('Header'),
              subtitle: Text(
                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Icon(Icons.flutter_dash_outlined,
                  size: 90, color: Colors.white),
              title: Text('Header'),
              subtitle: Text(
                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Icon(Icons.flutter_dash_outlined,
                  size: 90, color: Colors.white),
              title: Text('Header'),
              subtitle: Text(
                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
            ),

            SizedBox(
              height: 25,
            ),
            
            ListTile(
              leading: Icon(Icons.flutter_dash_outlined,
                  size: 90, color: Colors.white),
              title: Text('Header'),
              subtitle: Text(
                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
            ),
          ],
        ),
      ),
    );
  }
}
