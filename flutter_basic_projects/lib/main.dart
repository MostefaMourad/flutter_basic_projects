import 'package:flutter/material.dart';
import 'package:flutter_basic_projects/screens/home.dart';
import 'package:flutter_basic_projects/screens/second.dart';
import 'package:flutter_basic_projects/screens/third.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      routes: <String,WidgetBuilder>{
        '/home' : (BuildContext context) => new Home(),
        '/second' : (BuildContext context) => new Second(),
        '/third' : (BuildContext context) => new Third(),
      },
      home: new Home(),
    );
  }
}