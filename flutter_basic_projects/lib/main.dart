import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  
     String _text='';

     static TextEditingController _controller  = new TextEditingController();

    void _onChange(String value){
    setState(){
      _controller.text=value;
      _text=value;
     }
    }
     
  @override
  Widget build(BuildContext context1) {
        void _showAlert(){
       print(_text);
       
     }
    return new MaterialApp(
      title: 'Alert Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Alert Page'),
          actions: <Widget>[
            new IconButton(icon:new Icon(Icons.home),onPressed: null,),
            new IconButton(icon: new Icon(Icons.exit_to_app),onPressed: null,)
          ],
        ),
        body : new Container(child :
          new Column(
              children: <Widget>[
                new TextField(controller: _controller,onChanged: (String value){_onChange(value);}),
                new RaisedButton(child:new Text('Alert'),onPressed: (){_showAlert();},),
              ],
          )
        )
      ),
    );
  }
}