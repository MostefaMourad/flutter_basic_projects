import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class login extends StatelessWidget {
   const login ({
        Key key, // Key helps identify the actuel component 
        @required this.onSubmit,
      }) :super(key:key);

    final VoidCallback onSubmit ;  // it will allow other peaple to use this component with a callback

    static final TextEditingController _user  = new TextEditingController(); // it will allow us to work with a text field

    static final TextEditingController _pass  = new TextEditingController();
     
     String get username => _user.text ;
     String get password => _pass.text ;

@override
  Widget build(BuildContext context) {

    return new Column(
      children: <Widget>[
        new TextField(controller: _user,decoration: new InputDecoration(hintText: 'Enter a User name',),),
        new TextField(controller: _pass,decoration: new InputDecoration(hintText: 'Enter a Password'),obscureText: true,),
        new RaisedButton(child: new Text('Submit'),onPressed: onSubmit,),       
      ],
    );
  }
}