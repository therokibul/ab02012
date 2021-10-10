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
          title: Text(
            'Profile',
            style: TextStyle(fontSize: 40),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 25,
              ),
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('images/undraw.png'),
                //   NetworkImage(
                //       'https://cdn.pixabay.com/photo/2021/04/29/05/04/desert-6215516_960_720.jpg'),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 300,
                color: Colors.black54,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20),
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
                margin: EdgeInsets.symmetric(horizontal: 20),
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
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'contact@rokibul.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                width: 300,
                color: Colors.black54,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic',
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
