import 'package:flutter/material.dart';
import 'package:pizza_app/code/pizza.dart';

class Review extends StatelessWidget {
  pizza _pizzaOrder;
  List<String> _list = new List<String>();

  Review({order: null}) {
    _pizzaOrder = order;

    _list.add("Size: ${_pizzaOrder.size}");
    _list.add(" ");
    _list.add("Special: ${_pizzaOrder.special}");
    _list.add(" ");
    _list.add("Toppings:");
    _list.add(" ");


    _pizzaOrder.toppings.forEach((String name, bool value){
      if(value) _list.add(name);
    });

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Review Pizza Order'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Review your order', style: new TextStyle(fontWeight: FontWeight.bold),),
            new Expanded(
                child: new ListView.builder(
                    shrinkWrap: true,
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index){
                      return new Text(_list.elementAt(index));
                    }
                )
            ),
          ],
        ),
      ),
    );
  }
}