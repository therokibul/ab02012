import 'pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      home: Home(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/home', page: ()=> Home()),
      ],
    );
  }
}
