import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments["covidData"]["country"]),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(Get.arguments["covidData"]["countryInfo"]["flag"]),
            Text('Total Cases ${Get.arguments["covidData"]["cases"]}'),
            Text('Total deaths ${Get.arguments["covidData"]["deaths"]}'),
          ],
        ),
      ),
    );
  }
}
