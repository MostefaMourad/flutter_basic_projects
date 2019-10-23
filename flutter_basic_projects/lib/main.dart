import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home :MyApp())
  );

class MyApp extends StatefulWidget {
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  String _test='';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('TextField Page'),
        ),
        body:new Container(
          child: new Column(children: <Widget>[
            new TextField(),
            new RaisedButton(onPressed: null,)
          ],),
        )
      ),
    );
  }
}