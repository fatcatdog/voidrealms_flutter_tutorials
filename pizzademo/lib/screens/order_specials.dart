import 'package:flutter/material.dart';
import 'package:pizzademo/screens/review.dart';
import 'package:pizzademo/code/pizza.dart';

class OrderSpecials extends StatefulWidget {
  @override
  _State createState() => new _State();

}

class _State extends State<OrderSpecials> {
  pizza pizzaOrder = new pizza();


  void _setSpecial(int index, bool value) {
    setState(() {
      String key = pizzaOrder.specials.keys.elementAt(index);
      pizzaOrder.specials[key] = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Order A Special?'),),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new Flexible(
                  child: new ListView.builder(
                    shrinkWrap: true,
                    itemCount: pizzaOrder.specials.length,
                    itemBuilder: (BuildContext context, int index){
                      return new CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: new Text(pizzaOrder.specials.keys.elementAt(index)),
                          value: pizzaOrder.specials.values.elementAt(index),
                          onChanged: (bool value){_setSpecial(index, value);}
                      );
                    },
                  )),
              new RaisedButton(
                  child: new Text('Continue to Meats (OR VEGGE!!!)'),
                  onPressed: (){Navigator.of(context).pushNamed('/OrderMeats');}
              )
            ],
          ),
        ),
      ),
    );
  }
}