import 'dart:js';

import 'package:ab02012/pages/second.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Second()),);
            },
            leading: Hero(
              tag: 'Coffee',
              child: Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1541167760496-1628856ab772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGNvZmZlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')),
            ),
            title: Text('Coffee'),
          )
        ],
      ),
    );
  }
}
