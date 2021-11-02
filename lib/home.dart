import 'package:ab02012/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.teal,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoute.secondRoute);
          },
          child: Text(
            'Go To Second Page',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
