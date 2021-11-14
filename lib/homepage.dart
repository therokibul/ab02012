import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'Ipsum incididunt culpa mollit .',
              textScaleFactor: 5,
              style: TextStyle(fontFamily: 'Estonia'),
            ),
            Text(
              'Consequat ad sit do ipsum culpa duis ',
              textScaleFactor: 4,
            ),
            Text(
              'Id elit exercitation anim ex ipsum commodo.',
              textScaleFactor: 3,
            ),
            Text(
              'Eu excepteur non amet laborum anim irure ',
              textScaleFactor: 2,
            ),
            Text(
              'Magna laborum amet sint est.',
              textScaleFactor: 1,
            ),
          ],
        ),
      ),
    );
  }
}
