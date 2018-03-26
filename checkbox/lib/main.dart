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

  bool _isChecked = false;

  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('checkbox demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child:
            new Column(
              children: <Widget>[
new Row(
  children: <Widget>[
                new Text('Click it baby ->'),
                new Checkbox(value: _isChecked, onChanged: (bool value){onChanged(value);}),
            ],
),
new CheckboxListTile(
    title: new Text('Click me!!!'),
    value: _isChecked,
    activeColor: Colors.green,
    secondary: const Icon(Icons.home),
    onChanged: (bool value){onChanged(value);}),
              ],
            )
        )
      )
    );
  }
}