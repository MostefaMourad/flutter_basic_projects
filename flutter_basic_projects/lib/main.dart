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
    switch(await showDialog(
      context: context,
      child: new SimpleDialog(
        title: new Text('Do you like DevFest'),
        children: <Widget>[
          new SimpleDialogOption(
            child: const Text('Yess !!!!'),
            onPressed: (){
              Navigator.pop(context,Answer.YES);
            },
          ),
          new SimpleDialogOption(
            child: const Text('No'),
            onPressed: (){
              Navigator.pop(context,Answer.NO);
            },
          ),
          new SimpleDialogOption(
            child: const Text('Maybe ?'),
            onPressed: (){
              Navigator.pop(context,Answer.MAYBE);
            },
          )
        ],
      ),
    )
    ){
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
          new RaisedButton(
            child: new Text('Click me Dude !'),
            onPressed: (){_askuser();},
          )

        ],),
        )
    );
  }
}