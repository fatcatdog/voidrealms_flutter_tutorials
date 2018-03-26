import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Second'),),
      body: new Container(
          padding: new EdgeInsets.all(32.5),
          child: new Center(
              child: new Column(
                  children: <Widget>[
                    new Text('This is the SECOND screen'),
                    new RaisedButton(
                        child: new Text('Next'),
                        onPressed: (){Navigator.of(context).pushNamed('/Third');}
                    )
                  ]
              )
          )
      ),
    );
  }
}