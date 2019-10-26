import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(new MaterialApp(home:
  MyApp()
  ));

class MyApp extends StatefulWidget {
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  String answer ='';
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Demo Page'),
        ),
        body:new Container(child: new Column(children: <Widget>[

        ],),
    );
  }
}