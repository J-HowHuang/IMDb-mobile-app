import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMDb 2020台大資管營',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(child: Text('IMDb')),
    );
  }
}
