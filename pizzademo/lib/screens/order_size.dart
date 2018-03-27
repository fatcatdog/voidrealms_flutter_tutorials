import 'package:flutter/material.dart';
import 'package:pizzademo/screens/review.dart';
import 'package:pizzademo/code/sizes.dart';

class OrderSize extends StatefulWidget {
  @override
  _State createState() => new _State();

}

class _State extends State<OrderSize> {
  PizzaSize pizzeSize = new PizzaSize();


  void _setSize(int index, bool value) {
    setState(() {
      String key = pizzeSize.sizeList.keys.elementAt(index);
      pizzeSize.sizeList[key] = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Select Size of Pizza You Want'),),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new Flexible(
                  child: new ListView.builder(
                    shrinkWrap: true,
                    itemCount: pizzeSize.sizeList.length,
                    itemBuilder: (BuildContext context, int index){
                      return new CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: new Text(pizzeSize.sizeList.keys.elementAt(index)),
                          value: pizzeSize.sizeList.values.elementAt(index),
                          onChanged: (bool value){_setSize(index, value);}
                      );
                    },
                  )),

              new RaisedButton(
                  child: new Text('Continue to Specials'),
                  onPressed: (){Navigator.of(context).pushNamed('/OrderSpecials');}
              )
            ],
          ),
        ),
      ),
    );
  }
}


