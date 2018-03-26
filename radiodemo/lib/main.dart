import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {

  int _selected = 0;

  void onChanged(int value) {
    setState(() {
      _selected = value;
      print('value = $value');
    });
  }
  List<Widget> makeRadios() {
    List<Widget> list = new List<Widget>();

    for(int i = 0; i < 3; i++) {
      list.add(new Row(
          children: <Widget>[
            new Text('Radio $i'),
            new Radio(value: i, groupValue: _selected, onChanged: (int value){onChanged(value);})
          ]
      ));
    }
    
    
    for(int i = 0; i < 3; i++) {
      list.add(new RadioListTile(
          value: i,
          title: new Text('Radio $i'),
          groupValue: _selected, 
          onChanged: (int value){onChanged(value);},
          activeColor: Colors.red,
          secondary: new Icon(Icons.add_a_photo),
        subtitle: new Text('Subtitle here boi')
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext build) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Radio Demo'),
      ),
        body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
                children: makeRadios(),

          ),
        ),
      ),
    );
  }
}