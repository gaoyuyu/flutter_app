import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Column",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("Column Widget"),
            ),
            body: new Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: new Text("爱仕达三大打扫打扫打扫打扫的"),
                ),
                new Text("123"),
                new Text("dsf"),
              ],
            ))));
  }
}
