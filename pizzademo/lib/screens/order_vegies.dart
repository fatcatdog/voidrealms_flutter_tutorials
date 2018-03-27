import 'package:flutter/material.dart';
import 'package:pizzademo/screens/review.dart';
import 'package:pizzademo/code/pizza.dart';

class OrderVegies extends StatefulWidget {
  @override
  _State createState() => new _State();

}

class _State extends State<OrderVegies> {
  pizza pizzaOrder = new pizza();

  void _setTopping(int index, bool value) {
    setState(() {
      String key = pizzaOrder.toppings.keys.elementAt(index);
      pizzaOrder.toppings[key] = value;
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
                   itemCount: pizzaOrder.toppings.length,
                   itemBuilder: (BuildContext context, int index){
                     return new CheckboxListTile(
                       controlAffinity: ListTileControlAffinity.leading,
                       title: new Text(pizzaOrder.toppings.keys.elementAt(index)),
                         value: pizzaOrder.toppings.values.elementAt(index),
                         onChanged: (bool value){_setTopping(index, value);}
                     );
                   },
                 )),
             new RaisedButton(
                 child: new Text('Continue to Vegetables'),
                 onPressed: (){Navigator.of(context).pushNamed('/OrderMeats');}
             )
           ],
          ),
          ),
        ),
    );
  }
}