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

@override
  Widget build(BuildContext context) {

    return null;
  }
}