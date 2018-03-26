import 'package:flutter/material.dart';

void main() {
  runApp(
    new Center(
      child: new MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'hello flutter hello',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('racecars are for dummys'),),
      body:  new Center(
        child: new RaisedButton(onPressed: null,
        child: new Text('my button'),
        ),
      ),
      ),
    );
  }
}