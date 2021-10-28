import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

String name = '';
bool show = true;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Log In',
                  style: TextStyle(fontSize: 40),
                ),
                Image(
                  image: AssetImage('images/undraw_designer.png'),
                ),
                Text(
                  'Welcome $name',
                  style: TextStyle(fontSize: 40),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'User Name',
                      hintText: 'Enter your Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    obscureText: show,
                    decoration: InputDecoration(
                        labelText: 'password',
                        hintText: 'Enter your Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        suffix: TextButton(
                          onPressed: () {
                            setState(() {
                              show = !show;
                            });
                          },
                          child: Text(
                            'Show',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  minWidth: 300,
                  color: Colors.green,
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
