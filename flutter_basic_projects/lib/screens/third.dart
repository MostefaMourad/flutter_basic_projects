import 'package:flutter/material.dart';

class Third extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Third'),
      ),
     body : new Container(child :
       new Column( 
         children: <Widget>[
           
         new Text('Third'),
         new RaisedButton(child :new Text('Next'),onPressed:(){ Navigator.of(context).pushNamed('/home');},),
         new RaisedButton(child :new Text('Back'),onPressed:(){ Navigator.of(context).pop();},)
         ],
       )
      )
    );
  }
}