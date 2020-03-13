import 'package:flutter/material.dart';

import './route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMDb 2020台大資管營',
      theme: ThemeData(
        primaryColor: Color(0xfffae8c5),
        primaryColorDark: Color(0xffd7bb8c),
        accentColor: Color(0xff203c51),
        backgroundColor: Color(0xfffafafa),
      ),
      home: TempIndexPage(),
      routes: route,
    );
  }
}

class TempIndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.of(context).pushNamed('/login'),
              child: Text('Login Page'),
            ),
            RaisedButton(
              onPressed: () => Navigator.of(context).pushNamed('/home'),
              child: Text('Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
