import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
 home: MyApp())
);

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
          title: new Text('CheckBox Page'),
        ),
        body: new Container(
          child:new Column(
            children: <Widget>[
              new Checkbox(
                value: null,
                onChanged: null,
              )
            ],
          )
        ),
      ),
    );
  }
}