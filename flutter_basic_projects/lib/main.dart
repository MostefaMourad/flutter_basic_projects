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
enum Answer{YES,NO,MAYBE}
class _MyAppState extends State<MyApp>{
  String answer ='';
   
  void _setAnswer(String value){
    setState(() {
     answer=value; 
    });
  } 

  Future<Null> _askuser() async {
    switch(){
      case Answer.YES:
           _setAnswer('yes');
           break;
      case Answer.NO:
           _setAnswer('no');
           break;
      case Answer.MAYBE:
           _setAnswer('maybe');
           break;
    }
  }
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