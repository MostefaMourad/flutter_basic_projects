import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  String _value=null;
  List<String> _values = new List<String>();
   
   @override
  void initState() {
    _values.addAll(['Male','Female','Undeclared']);
    _value=_values.elementAt(0);
  }
  
  void _onChanged(String val){
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
        body:new Container(
          child:new Column(
            children: <Widget>[
             new DropdownButton(
               items: null,
               onChanged: (String val){_onChanged(val);},
             )
            ],
          )
        )
      ),
    );
  }
}