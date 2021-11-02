import 'package:flutter/material.dart';
import 'home.dart';
import 'second_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
        routes: {
          "/":(context) => HomePage(),
          MyRoute.secondRoute: (context) => SecondPage(),
        },
    );
  }
}

class MyRoute{
  static String secondRoute = '/second';
}