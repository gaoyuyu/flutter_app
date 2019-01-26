import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Row",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("Row Widget"),
            ),
            body: new Row(
              children: <Widget>[
                Expanded(
                    child:new RaisedButton(
                    onPressed: () {},
                    color: Colors.deepPurpleAccent,
                    child: new Text(
                      "Btn1", style: new TextStyle(color: Colors.white),),
                  ),
                ),
                Expanded(
                    child:new RaisedButton(
                    onPressed: () {},
                    color: Colors.pinkAccent,
                    child: new Text(
                      "Btn2", style: new TextStyle(color: Colors.white),),
                  ),
                ),
                Expanded(
                    child:new RaisedButton(
                    onPressed: () {},
                    color: Colors.blueAccent,
                    child: new Text(
                      "Btn3", style: new TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            )));
  }
}
