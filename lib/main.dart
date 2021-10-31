import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

String name = '';
bool show = true;
bool changedButton = false;

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
                changedButton
                    ? Image(
                        image: AssetImage('images/undraw.png'),
                        height: 200,
                      )
                    : Image(
                        image: AssetImage('images/undraw_designer.png'),
                        height: 200,
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
                        child: show ? Text('Show') : Text('Hide'),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      changedButton = !changedButton;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(
                      seconds: 2,
                    ),
                    width: changedButton ? 50 : 300,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: changedButton
                        ? Icon(
                            Icons.done_outlined,
                            color: Colors.white,
                          )
                        : Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 20),
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
