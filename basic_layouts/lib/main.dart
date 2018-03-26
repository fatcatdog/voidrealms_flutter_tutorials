import 'package:flutter/material.dart';
import 'hello.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    title: 'basic layouts',
    home: new Scaffold(
      appBar: new AppBar(title: new Text('basiccc layouts'),),
      body: new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new hello(),
              new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new hello(),
                  new hello(),
                  new hello(),
                ],
              )
            ],
          ),
        ),
      ),
    )
    );
  }
}