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

List<bool> _data = new List<bool>();
@override
  void initState() {
    super.initState();
    setState(() {
     for(int i=0;i<10;i++){
       _data.add(false);
     } 
     print('${_data.length}');
    });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ListView Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ListView Page'), 
        ),
        body: new ListView.builder(
          itemCount: _data.length,
          itemBuilder: (BuildContext context,int index){
            return new Card(child: new Container(child: new Column(children: <Widget>[
              new Text('this the item $index'),
              new CheckboxListTile(
                value: _data[index],
                onChanged: null,
              )
            ],
            ),)
          ,);
          },
        )
      ),
    );
  }
}