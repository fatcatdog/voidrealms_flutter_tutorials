import 'package:flutter/material.dart';
import 'package:pizzademo/screens/home.dart';
import 'package:pizzademo/screens/order_vegies.dart';
import 'package:pizzademo/screens/order_meats.dart';
import 'package:pizzademo/screens/order_size.dart';
import 'package:pizzademo/screens/order_specials.dart';
import 'package:pizzademo/screens/review.dart';



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder> {
        '/Home': (BuildContext context) => new Home(),
        '/OrderVeggies': (BuildContext context) => new OrderVegies(),
        '/OrderSize': (BuildContext context) => new OrderSize(),
        '/OrderMeats': (BuildContext context) => new OrderMeats(),
        '/OrderSpecials': (BuildContext context) => new OrderSpecials(),
        '/Review': (BuildContext context) => new Review(),
      },
      home: new Home(),
    );
  }
}