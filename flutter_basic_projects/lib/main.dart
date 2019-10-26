import 'package:flutter/material.dart';

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
      title: 'Login Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Live Template Page'),
        ),
        body: new Container(child: null,),
      ),
    );
  }
}