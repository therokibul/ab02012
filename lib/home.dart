import 'main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool _changeButton = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                _changeButton = !_changeButton;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 5),
              width: _changeButton ? 500 : 300,
              height: _changeButton ? 500 : 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.green,
              ),
              child: _changeButton
                  ? Icon(
                      Icons.flutter_dash_outlined,
                      size: 50,
                    )
                  : Text(
                      'data',
                      textScaleFactor: 3,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
