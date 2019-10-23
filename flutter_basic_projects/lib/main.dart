import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home:MyApp())
  );

class MyApp extends StatefulWidget {
  
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  

     static TextEditingController _controller  = new TextEditingController();

    void _onChange(String value){
    setState(){
      _controller.text=value;
     }
    }
      void _showAlert(){
        AlertDialog alertDialog = new AlertDialog(
        content : new Text(_controller.text), 
        ) ;
        showDialog(context: context,child: alertDialog);          
     }
  @override
  Widget build(BuildContext context) {
       
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