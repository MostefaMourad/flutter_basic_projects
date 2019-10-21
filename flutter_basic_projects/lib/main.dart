import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  
  
  @override
  Widget build(BuildContext context) {
    String _text;
    void _onChange(String value){
    setState(){
      _text=value;
    }
  }
  void _showAlert(String string){
    print(_text);
  /*  AlertDialog alertDialog = new AlertDialog(
      content: new Text(string,style: new TextStyle(fontSize: 30.0 ),),
      actions: <Widget>[

      ],
    );
    showDialog(context: context,child: alertDialog); */
  }
    return new MaterialApp(
      title: 'Login Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Login Page'),
          actions: <Widget>[
            new IconButton(icon:new Icon(Icons.home),onPressed: null,),
            new IconButton(icon: new Icon(Icons.exit_to_app),onPressed: null,)
          ],
        ),
        body : new Container(child :
          new Column(
              children: <Widget>[
                new TextField(onChanged: (String value){_onChange(value);}),
                new RaisedButton(child:new Text('Alert'),onPressed: (){_showAlert(_text);},),
              ],
          )
        )
      ),
    );
  }
}