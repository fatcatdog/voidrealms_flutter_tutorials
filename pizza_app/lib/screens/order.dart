import 'package:flutter/material.dart';
import 'package:pizza_app/screens/review.dart';
import 'package:pizza_app/code/pizza.dart';

class Order extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Order> {
  pizza _pizzaOrder = new pizza();

  void _setSize(String value) {
    setState((){
      _pizzaOrder.size = value;
    });
  }

  void _setSpecial(String value) {
    setState((){
      _pizzaOrder.special = value;
    });
  }

  void _setTopping(int index, bool value) {
    setState((){
      String key = _pizzaOrder.toppings.keys.elementAt(index);
      _pizzaOrder.toppings[key] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Order Pizza'),),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Select a size for your pie:'),
              new DropdownButton<String>(
                  value: _pizzaOrder.size,
                  items: pizza.sizes.map((String value) {
                    return new DropdownMenuItem(
                        value: value,
                        child: new Row(
                          children: <Widget>[
                            new Icon(Icons.local_pizza),
                            new Text('Size: ${value}'),
                          ],
                        )
                    );
                  }).toList(),
                  onChanged: (String value){_setSize(value);}
              ),


              new Text('Check out our specials:'),
              new DropdownButton<String>(
                  value: _pizzaOrder.special,
                  items: pizza.specials.map((String value) {
                    return new DropdownMenuItem(
                        value: value,
                        child: new Row(
                          children: <Widget>[
                            new Icon(Icons.cake),
                            new Text('Special: ${value}'),
                          ],
                        )
                    );
                  }).toList(),
                  onChanged: (String value){_setSpecial(value);}
              ),
              new Text('Select some vegetable toppings:'),

              new Expanded(
                child: new ListView.builder(
                    shrinkWrap: true,
                    itemCount: _pizzaOrder.toppings.length,
                    itemBuilder: (BuildContext context, int index){
                      return new CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: new Text(_pizzaOrder.toppings.keys.elementAt(index)),
                          value: _pizzaOrder.toppings.values.elementAt(index),
                          onChanged: (bool value){_setTopping(index, value);});
                    }
                ),
              ),

              new RaisedButton(
                  child: new Text('Continue'),
                  onPressed: (){Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new Review(order: _pizzaOrder,)
                  ));}
              )
            ],
          ),
        ),
      ),
    );
  }
}