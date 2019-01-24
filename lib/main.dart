import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp(
      items: new List<String>.generate(1000, (i) => "Item $i"),
    ));

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ListView",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("ListView Widget"),
            ),
            body: new ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return new ListTile(
                    title: new Text("${items[index]}"),
                  );
                })));
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.deepPurple,
        ),
        new Container(
          width: 180.0,
          color: Colors.pink,
        ),
        new Image.network(
            "http://img1.gamersky.com/image2019/01/20190122_wyc_246_8/gamersky_01small_02_20191221159330.jpg"),
        new Image.network(
            "https://github.com/orhanobut/dialogplus/raw/master/art/DP1.png"),
        new Image.network(
            "https://github.com/orhanobut/hawk/raw/master/art/hawk-logo.png"),
      ],
    );
  }
}
