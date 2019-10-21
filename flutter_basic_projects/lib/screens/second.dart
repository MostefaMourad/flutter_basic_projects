import 'package:flutter/material.dart';

class Second extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second'),
      ),
     body : new Container(child :
       new Column( 
         children: <Widget>[
           
         new Text('Second'),
         new RaisedButton(child :new Text('Next'),onPressed:(){ Navigator.of(context).pushNamed('/third');},)
         ],
       )
      )
    );
  }
}