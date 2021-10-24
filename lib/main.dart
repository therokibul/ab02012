import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 250,
                      color: Colors.green,
                    ),
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
                    Positioned(
                      top: 150,
                      left: 100,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('images/undraw.png'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Text(
                  'Victoria Robertson',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text(
                  'A mantra goes here',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 350,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'Post',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ListTile(
                  leading: Icon(Icons.flutter_dash_outlined,
                      size: 90, color: Colors.white),
                  title: Text(
                    'Header',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "He'll want to use your yacht, and I don't want this thing smelling like fish.",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
