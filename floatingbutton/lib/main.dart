import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  String _lastpress = 'never';

  void _onPressed() {
    print('pressed');
    setState((){
      DateTime current = new DateTime.now();
      _lastpress = current.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: (){_onPressed();},
        child: new Icon(Icons.timer),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Last pressed: ${_lastpress}')
          ],
        ),
      ),
    );
  }
}