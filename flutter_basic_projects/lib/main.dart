import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  String _text ='';

  final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();

  void _onChanged(String value){
    setState(){
     _text=value;
    }
  }

  void _showSnackBar(String value){
     if(value.isEmpty) return ;
     _scaffoldState.currentState.showSnackBar(new SnackBar(
       content: new Text(value),
     ));
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      key: _scaffoldState,
      title: 'Login Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Login Page'),
          actions: <Widget>[
            new IconButton(icon:new Icon(Icons.home),onPressed: null,),
            new IconButton(icon: new Icon(Icons.exit_to_app),onPressed: null,)
          ],
        ),
        body: new Container(
          child: new Center(
            child:new Column(children: <Widget>[
              new TextField(onChanged: (String value){_onChanged(value);},),
              new RaisedButton(child:new Text('Snack'),onPressed: (){_showSnackBar(_text);},)
            ],) 
          ,),
        ),
      ),
    );
  }
}