import 'package:ab02012/pages/home.dart';
import 'package:ab02012/pages/second.dart';
import 'package:ab02012/pages/third.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoffeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CoffeApp extends StatefulWidget {
  CoffeApp({Key? key}) : super(key: key);

  @override
  State<CoffeApp> createState() => _CoffeAppState();
}

class _CoffeAppState extends State<CoffeApp> {
  List listBody = [
    Home(),
    Second(),
    Third(),
  ];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listBody[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard_outlined),
            label: 'Gift',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.summarize_outlined),
            label: 'Summar',
          ),
        ],
      ),
    );
  }
}
