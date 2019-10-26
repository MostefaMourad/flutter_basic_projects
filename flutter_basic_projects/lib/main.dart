import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home:
  MyApp()
  ));

class MyApp extends StatefulWidget {
@override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future<Null> _selectDate (BuildContext context) async {
     final DateTime picked = await showDatePicker(
       context: context,
       initialDate: _date,
       firstDate: new DateTime(2016),
       lastDate: new DateTime(2021)
     );

     if(picked != null && picked != _date){
       setState((){
         _date=picked;
       });
     }
  }
  Future<Null> _selectTime (BuildContext context) async {
     final TimeOfDay picked = await showTimePicker(
       context: context,
       initialTime: _time
     );

     if(picked != null && picked != _date){
       setState((){
         _time=picked;
       });
     }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Demo Page'),
        ),
        body: new Container(
          child: new Column(children: <Widget>[
            new RaisedButton(child: new Text('Cklick me dude !'),onPressed: (){_selectTime(context);},)
          ],),
        ),
    );
  }
}