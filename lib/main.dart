// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green.shade200,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: Icon(Icons.contact_phone_outlined),
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
              Image.network(
                'https://images.unsplash.com/photo-1632641326151-aa642d15dd1b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80',
                height: 200.0,
                width: 200.0,
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Rokibul Hasan',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                '@therokibul',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'contact@rokibul.com',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
