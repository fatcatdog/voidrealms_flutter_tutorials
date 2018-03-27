import 'package:flutter/material.dart';
import 'package:pizzademo/screens/review.dart';
import 'package:pizzademo/code/pizza.dart';
import 'package:pizzademo/code/meats.dart';

class OrderMeats extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<OrderMeats> {
  meats meatsSelected = new meats();

  void _setMeat(int index, bool value) {
    setState(() {
      String key = meatsSelected.meatList.keys.elementAt(index);
      meatsSelected.meatList[key] = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Order Pizza'),),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new Flexible(
                  child: new ListView.builder(
                    shrinkWrap: true,
                    itemCount: meatsSelected.meatList.length,
                    itemBuilder: (BuildContext context, int index){
                      return new CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: new Text(meatsSelected.meatList.keys.elementAt(index)),
                          value: meatsSelected.meatList.values.elementAt(index),
                          onChanged: (bool value){_setMeat(index, value);}
                      );
                    },
                  )),

          new RaisedButton(
      child: new Text('Continue'),
        onPressed: (){Navigator.push(context, new MaterialPageRoute(
            builder: (BuildContext context) => new Review(order: meatsSelected)
        ));}
    ),
            ],
          ),
        ),
      ),
    );
  }
}