import 'package:flutter/material.dart';

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
  String _lastPressed = 'never';
  void _onPressed(){
    setState(() {
     DateTime current = new DateTime.now();
     _lastPressed=current.toString(); 
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Demo Page'),
        ),
        body: new Container(child: new Column(children: <Widget>[
          new Text('Last Pressed $_lastPressed'),
        ],)),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.search),
          onPressed: (){_onPressed();},
          backgroundColor: Colors.red,

        ),
    );
  }
}