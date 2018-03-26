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

  String _text = '';

  void onPressed() {
    print('the text is $_text');
  }

  void onPressed2() {
    print(_controller.text);

  }

  void onChanged(String value) {
  setState((){
    _text = value;
  }
  );
  }

  final TextEditingController _controller = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    appBar: new AppBar(
    title: new Text('text demoo'),
  ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
            new TextField(
                onChanged: (String value){onChanged(value);},
               controller: _controller,
                maxLines: 3,
                autocorrect: true,
//                obscureText: true,
            decoration: new InputDecoration(
              icon: new Icon(Icons.ac_unit),
              hintText: 'type something here',
              labelText: 'what is your name',
            ),
            ),
            new RaisedButton(
                child: new Text('click me'),
//                onPressed: (){onPressed();},
              onPressed: (){onPressed2();},

            ),
          ],
        ),
        ),
      ),
    );
  }
}