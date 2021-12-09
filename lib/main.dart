import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewtest(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GridViewtest extends StatelessWidget {
  GridViewtest({Key? key}) : super(key: key);
  List counter = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.green,
              height: 200,
              child: Text(
                counter[index],
                textScaleFactor: 3,
              ),
            );
          }),
    );
  }
}
