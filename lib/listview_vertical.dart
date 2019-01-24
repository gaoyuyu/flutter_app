import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("ListView Widget"),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.favorite),
              title: new Text(new WordPair.random().asPascalCase),
            ),
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text(new WordPair.random().asPascalCase),
            ),
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text(new WordPair.random().asPascalCase),
            ),
            new ListTile(
              leading: new Icon(Icons.live_help),
              title: new Text(new WordPair.random().asPascalCase),
            ),
            new ListTile(
              leading: new Icon(Icons.lightbulb_outline),
              title: new Text(new WordPair.random().asPascalCase),
            ),
            new Image.network("http://img1.gamersky.com/image2019/01/20190122_wyc_246_8/gamersky_01small_02_20191221159330.jpg"),
            new Image.network("https://github.com/orhanobut/dialogplus/raw/master/art/DP1.png"),
            new Image.network("https://github.com/orhanobut/hawk/raw/master/art/hawk-logo.png"),
          ],
        ),
      ),
    );
  }
}
