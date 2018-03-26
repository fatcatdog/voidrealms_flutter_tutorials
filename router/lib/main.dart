import 'package:flutter/material.dart';
import 'package:router/screens/home.dart';
import 'package:router/screens/second.dart';
import 'package:router/screens/third.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navication',
      routes: <String,WidgetBuilder>{
        '/Home': (BuildContext context) => new Home(),
        '/Second': (BuildContext context) => new Second(),
        '/Third': (BuildContext context) => new Third(),
      },
      home: new Home(),
    );
  }
}