import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

//will not change
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

//a state will change
class _MyAppState extends State<MyApp> {
  String _title = 'App Bar Demo';
  String _myState = 'No State';

  void _pressed(String message) {

    setState(() {
      _myState = message;
    }
    );
  print(message);
  _myState = message;

  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new Text('la la la la'),
          new IconButton(icon: new Icon(Icons.add_circle), onPressed: () {_pressed('Cirlce added');}),
          new IconButton(icon: new Icon(Icons.add_alert), onPressed: () {_pressed('Alert pressed');}),
          new IconButton(icon: new Icon(Icons.people), onPressed: () {_pressed('People pressed');}),
          new RaisedButton(child: new Text('Button'), onPressed: () {_pressed('super button of doom');}),
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Text(_myState),
          )
        ),
      ),
    );
  }
}

