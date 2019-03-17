import 'package:flutter/material.dart';
import 'right_back_demo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: RightBackDemo(),
    );
  }
}

