// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade200,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: Icon(Icons.arrow_back_outlined),
          title: Text(
            'Profile',
            style: TextStyle(fontSize: 40),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Image.asset(
                'images/lash.jpg',
                height: 200,
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 300,
                color: Colors.black54,
                padding: EdgeInsets.all(20),
                child: Text(
                  'Rokibul Hasan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 300,
                color: Colors.black54,
                padding: EdgeInsets.all(10),
                child: Text(
                  '@therokibul',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 300,
                color: Colors.black54,
                padding: EdgeInsets.all(10),
                child: Text(
                  'contact@rokibul.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
