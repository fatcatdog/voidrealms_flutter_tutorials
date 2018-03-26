import 'package:flutter/material.dart';

class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(5.0),
      child: new Column(
        children: <Widget>[
          new Text('1'),
          new Text('2'),
          new Text('3'),
        ],
      ),
    );
  }
}