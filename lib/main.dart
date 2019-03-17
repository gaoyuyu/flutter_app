import 'package:flutter/material.dart';
import 'draggable_demo.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: DraggableDemo(),
    );
  }
}

