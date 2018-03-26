import 'package:flutter/material.dart';
import 'package:loginapp/settings.dart';
import 'package:loginapp/login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String _title = 'please login';
  Widget _screen;
  login _login;
  settings _settings;
  bool _authenticated;

  _MyAppState() {
    _login = new login(onSubmit: (){onSubmit();});
    _settings = new settings();
    _screen = _login;
    _authenticated = false;
  }

  void onSubmit() {
    print('login with: ' + _login.username + ' ' + _login.password);
  if(_login.username == 'user' && _login.password == 'password') {
    _setAuthenticated(true);
  }
  }

  void _goHome() {
    print('go home $_authenticated');
    setState(() {
      if (_authenticated == true) {
        _screen = _settings;
      } else {
        _screen = _login;
      }
    }
    );
  }

  void _logout() {
    print('logout');
    _setAuthenticated(false);
  }

  void _setAuthenticated(bool auth) {
    setState(() {
      if (auth == true) {
        _screen = _settings;
        _title = 'Welcome';
        _authenticated = true;
      } else {
        _screen = _login;
        _title = 'Please login';
        _authenticated = false;
      }
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp (
      title: 'Login Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.home), onPressed: (){_goHome();}),
            new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: (){_logout();}),
          ],
        ),
        body: _screen,
      ),
    );
    }
  }
