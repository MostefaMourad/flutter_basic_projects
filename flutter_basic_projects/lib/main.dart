import 'package:flutter/material.dart';
import 'package:flutter_basic_projects/settings.dart';
import 'package:flutter_basic_projects/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  void _goHome(){
    print('go Home');
  }
  void _logOut(){
    print('log Out');
  }
  Widget _screen;
  login _login;
  settings _settings;
  
  _MyAppState(){
    _login = new login(onSubmit: (){onSubmit();});
    _settings = new settings();
    _screen = _login ;
  }
  
  void onSubmit(){
    print('login in with '+_login.username);
  }
   

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Login Page'),
          actions: <Widget>[
            new IconButton(icon:new Icon(Icons.home),onPressed:(){ _goHome();},),
            new IconButton(icon: new Icon(Icons.exit_to_app),onPressed:(){ _logOut();},)
          ],
        ),
        body: new login(onSubmit: (){onSubmit();},),
      ),
    );
  }
}