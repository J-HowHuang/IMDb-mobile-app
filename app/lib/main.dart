import 'package:flutter/material.dart';

import './route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMDb 2020台大資管營',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
