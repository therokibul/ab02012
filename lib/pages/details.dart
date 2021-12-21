import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(Get.arguments["covidData"]["countryInfo"]["flag"]),
          ],
        ),
      ),
    );
  }
}
