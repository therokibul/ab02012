import 'dart:convert';
import 'dart:js';
import 'package:ab02012/models/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LetsTestHTTP(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LetsTestHTTP extends StatefulWidget {
  const LetsTestHTTP({Key? key}) : super(key: key);

  @override
  _LetsTestHTTPState createState() => _LetsTestHTTPState();
}

class _LetsTestHTTPState extends State<LetsTestHTTP> {

 Future getData()async{

  final response = await get(Uri.https('jsonplaceholder.typicode.com', 'posts'));

      var responseData = json.decode(response.body);

      List posts=[];

      for(var index in responseData){
        Post post = Post(
          
          title: index['title'],
          body:  index['body'],
        );
        posts.add(post);
      }
      return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(
              snapshot.data == null
            ){
                return Text('Loading..');
            }else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                
                itemBuilder: (context, index){
                  return SizedBox(
                    height: 250,
                    child: Column(
                      children: [
                          Text(snapshot.data[index].title),
                          Text(snapshot.data[index].body),
                          
                      ],
                    ),
                  );
                }
                
                
                 );
            }
          }
          
          
          ),
      ),
    );
  }
}