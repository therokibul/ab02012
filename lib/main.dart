
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          leading: Icon(
            Icons.pets_outlined
          ),
          title: Text('Hello world',
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.black,
            fontStyle: FontStyle.italic
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal.shade900,
        ),
      ),
    ),
  );
}