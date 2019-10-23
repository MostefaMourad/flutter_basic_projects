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

  void _onPressed(){
    print('the Text is $_test');
  }
  void _onChanged(String value){
    setState((){
      _test=value;
    });
  }
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
            new TextField(
              onChanged: (String value){_onChanged(value);},
              maxLines: 3,
              autocorrect: true,
            ),
            new RaisedButton(child:new Text('Click me!'), onPressed: (){_onPressed();},)
          ],),
        )
      ),
    );
  }
}