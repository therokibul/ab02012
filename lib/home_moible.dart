
import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;
    return Center(
      child: Container(
        height: screenHeight * 0.6,
        width: screenWidth * 0.7,
        color: Colors.red,
        constraints: BoxConstraints(
          maxWidth: 700,
        ),
      ),
    );
  }
}
