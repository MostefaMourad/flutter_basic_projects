import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  bool _value=false;

  void _onChanged(bool val){
    setState(() {
      _value=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Login Page'),
        ),
        body:new Container(child:
          new Column(children: <Widget>[
             new Switch(onChanged: (bool value){_onChanged(value);} ,value: _value,)
          ],)
        )
      ),
    );
  }
}