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
  bool _isChecked = false;

  void _onChanged(bool value){
    setState(() {
     _isChecked=value; 
    });
  }

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
                value: _isChecked,
                onChanged:(bool value){_onChanged(value);},
              ) 
            ],
          )
        ),
      ),
    );
  }
}