import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image",
      home: new Scaffold(
        body: new Center(
          child: new Container(
            width: 300.0,
            height: 200.0,
            color: Colors.pink,
            child: new Image(
              image: NetworkImage(
                  "http://jspang.com/static//myimg/blogtouxiang.jpg"),
              color: Colors.deepPurple,
              colorBlendMode: BlendMode.multiply,
              repeat: ImageRepeat.repeatY,
            ),
          ),
        ),
      ),
    );
  }
}
