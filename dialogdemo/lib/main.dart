import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

enum Answer{YES,NO,MAYBE}

class _State extends State<MyApp> {

  String _answer = '';

  void setAnswer(String value) {
    setState(() {
      _answer = value;
    });
  }

  Future<Null> _askuser() async {
    switch(
    await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text('Do you like Flutter?'),
          children: <Widget>[
            new SimpleDialogOption(
              onPressed: (){Navigator.pop(context,Answer.YES);},
              child: const Text('Yes!!!'),
            ),
            new SimpleDialogOption(
              onPressed: (){Navigator.pop(context,Answer.NO);},
              child: const Text('No!!!'),
            ),
            new SimpleDialogOption(
              onPressed: (){Navigator.pop(context,Answer.MAYBE);},
              child: const Text('Maybe?'),
            ),
          ]
        ))
    ) {
      case Answer.YES:
        setAnswer('yes');
        break;
      case Answer.NO:
        setAnswer('no');
        break;
      case Answer.MAYBE:
        setAnswer('maybe');
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('You answered ${_answer}'),
            new RaisedButton(
              child: new Text('click me...'),
                onPressed: (){_askuser();}
            )
          ],
        ),
      ),
    );
  }
}