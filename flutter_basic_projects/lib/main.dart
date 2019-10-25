import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  double _value=0.0;

  void _onChanged(double val){
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
          title: new Text('Slider and progess indicator Page'),
         
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
             new Slider(onChanged: (double val){_onChanged(val);},value: _value,
             min: 0.0,
             max: 100.0,
             )
            ],
          )
        ),
      ),
    );
  }
}