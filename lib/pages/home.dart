import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List covidData = [];

  Future getData() async {
    var response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries'));

    var responseData = jsonDecode(response.body);

    setState(() {
      covidData = responseData;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: covidData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    Get.toNamed('/details', arguments: {
                      'covidData': covidData[index],
                    });
                  },
                  leading: Image.network(
                    covidData[index]["countryInfo"]["flag"],
                    height: 80,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                  title: Text(covidData[index]["country"]),
                  subtitle: Text('Total cases: ${covidData[index]["cases"]}'),
                ),
              );
            }));
  }
}
