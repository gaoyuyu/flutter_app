import 'package:flutter/material.dart';
import 'pages/pages.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Bottom Navigation Bar",
      //自定义主体样本
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: FirstPage(),
    );
  }
}
