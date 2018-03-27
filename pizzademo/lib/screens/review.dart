import 'package:flutter/material.dart';
import 'package:pizzademo/code/pizza.dart';
import 'package:pizzademo/code/meats.dart';
import 'package:pizzademo/code/sizes.dart';
import 'package:pizzademo/code/specials.dart';
import 'package:pizzademo/code/veggies.dart';


class Review extends StatelessWidget {
  pizza _pizzaOrder;
  meats  _meatsOrder;
  PizzaSize _pizzaSize;




  List<String> _specialsList = new List<String>();
  List<String> _meatsList = new List<String>();
  List<String> _veggiesList = new List<String>();

  Review({order: null}) {
    _pizzaOrder = order;

    _specialsList.add('Specials:');
    _meatsList.add('Meats: ');
    _veggiesList.add('Veggie Toppings: ');

    _pizzaOrder.toppings.forEach((String name, bool value) {
      if(value) _veggiesList.add(name);
    });
    _pizzaOrder.specials.forEach((String name, bool value) {
      if(value) _specialsList.add(name);
    });
    _pizzaOrder.meats.forEach((String name, bool value) {
      if(value) _meatsList.add(name);
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
          new Text(
              'Review Your Order', style: new TextStyle(fontWeight: FontWeight.bold),),
          new Expanded(
              child: new ListView.builder(
                shrinkWrap: true,
                  itemCount: _specialsList.length,
                  itemBuilder: (BuildContext context, int index){
                  return new Text(_specialsList.elementAt(index));
                  ;
                  }
              )
          ),
          new Expanded(
              child: new ListView.builder(
                  shrinkWrap: true,
                  itemCount: _meatsList.length,
                  itemBuilder: (BuildContext context, int index){
                    return new Text(_meatsList.elementAt(index));
                    ;
                  }
              )
          ),
          new Expanded(
              child: new ListView.builder(
                  shrinkWrap: true,
                  itemCount: _veggiesList.length,
                  itemBuilder: (BuildContext context, int index){
                    return new Text(_veggiesList.elementAt(index));
                    ;
                  }
              )
          ),
        ],
      ),
    ),
  );
}

}