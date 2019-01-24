import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container",
      home: new Scaffold(
        body: new Center(
          child: new Container(
            child: new Text(
              "Container",
              style: new TextStyle(
                fontSize: 20.0,
              ),
            ),
            alignment: Alignment.topLeft,
            width: 500,
            height: 300,
            padding: EdgeInsets.fromLTRB(10.0,25.0,30.0,0),
            margin: EdgeInsets.all(30.0),
            decoration: new BoxDecoration(
              gradient: new LinearGradient(colors: [Colors.deepPurpleAccent,Colors.red]),
              border: Border.all(width: 3.0,color: Colors.pink)
              
            ),
          ),
        ),
      ),
    );
  }
}
