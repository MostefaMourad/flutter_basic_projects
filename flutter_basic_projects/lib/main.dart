import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{

List<bool> _data = new List<bool>();
@override
  void initState() {
    setState(() {
     for(int i=0;i<10;i++){
       _data.add(false);
     } 
    });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ListView Page'), 
        ),
        body: new ListView.builder(
          itemCount: _data.length,
          itemBuilder: (BuildContext context,int index){
            return new Card();
          },
        )
      ),
    );
  }
}