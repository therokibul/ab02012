import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

var changeContainer = true;

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> curvedAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    _animationController.repeat();
    curvedAnimation = CurvedAnimation(
        parent: _animationController, curve: Curves.elasticInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(
              turns: Tween<double>(begin: 0, end: 1).animate(curvedAnimation),
              child: Icon(
                Icons.star,
                size: 200,
              ),
            ),
            AnimatedContainer(
              duration: Duration(
                seconds: 5,
              ),
              height: changeContainer ? 300 : 200,
              width: changeContainer ? 300 : 60,
              color: Colors.teal,
              curve: Curves.bounceInOut,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  changeContainer = !changeContainer;
                });
              },
              child: Text('Do Animation'),
            )
          ],
        ),
      ),
    );
  }
}
