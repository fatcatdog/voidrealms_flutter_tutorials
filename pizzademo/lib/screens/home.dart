import 'package:flutter/material.dart';
import 'package:pizzademo/screens/order_vegies.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Pizza Demo'),),
      body: new Center(
        child: new Container(
              padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Image.asset('images/pizza.png'),
              new RaisedButton(
                child: new Text('Order'),
                  onPressed: (){Navigator.of(context).pushNamed('/OrderSize');}
              )
            ],

            ),
        ),
      )
    );
  }
}