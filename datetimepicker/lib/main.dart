import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  
  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();
  
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2019)
    );

    if(picked != null && picked != _date) {
      print('Date selected is ${_date.toString()}');
      setState(() {
        _date = picked;
      });
    }
  }

  Future<Null> _selectTime(BuildContext contect) async {
    final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: _time
    );

    if(picked != null && picked != _time) {
      print('Time selected is ${_time.toString()}');
      setState(() {
        _time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Date selected is ${_date.toString()}'),
            new RaisedButton(
              child: new Text('Select Date'),
                onPressed: (){_selectDate(context);}
            ),
            new Text('Time selected is ${_time.toString()}'),
            new RaisedButton(
                child: new Text('Select Time'),
                onPressed: (){_selectTime(context);}
            ),
          ],
        ),
      ),
    );
  }
}