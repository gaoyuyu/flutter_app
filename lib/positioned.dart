import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var  stack = new Stack(
      alignment: FractionalOffset(0.5,0.8),
      children: <Widget>[

        new CircleAvatar(
          backgroundImage: NetworkImage("http://jspang.com/static//myimg/blogtouxiang.jpg"),
          radius: 100.0,
          
        ),
        new Positioned(
          top:10.0,
          left:10.0,
          child: new Text('Java'),
        ),
        new Positioned(
          bottom:10.0,
          right:10.0,
          child: new Text('Kotiln'),
        )

      ],

    );
    return MaterialApp(
        title: "Column",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("Column Widget"),
            ),
            body: new Center(
              child: stack,
            )));
  }
}
