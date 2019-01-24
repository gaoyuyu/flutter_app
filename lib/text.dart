import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text Widget",
      home: new Scaffold(
        body: new Center(
          child: new Text(
            "Resolving dependencie Syncing files to device vivo x5m...Resolving dependencie Syncing files to device vivo x5m...Resolving dependencie Syncing files to device vivo x5m...Resolving dependencie Syncing files to device vivo x5m",
            textAlign: TextAlign.start,
            style: new TextStyle(
              fontSize: 20.0,
              color:  Colors.pinkAccent,
              decoration:TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed

            ),
          ),
        ),
      ),
    );
  }
}
