import 'package:ab02012/scecond.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool _changeBotton = true;

class _HomePageState extends State<HomePage> {
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
            InkWell(
              onTap: () async {
                setState(() {
                  _changeBotton = !_changeBotton;
                });
                await Future.delayed(Duration(seconds: 3));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Second(),
                  ),
                );
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 3),
                width: _changeBotton ? 300 : 50,
                padding: EdgeInsets.all(10),
                color: Colors.green,
                child: _changeBotton
                    ? Text(
                        'Goto ScondPage',
                        textAlign: TextAlign.center,
                      )
                    : Icon(Icons.check_circle_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
