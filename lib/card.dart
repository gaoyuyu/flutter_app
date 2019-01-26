import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            title: new Text(
              "address1",
              style: new TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text(
              "address1",
            ),
            leading: new Icon(Icons.live_help,color: Colors.blueAccent,),
          ),
          new Divider(),
          new ListTile(
            title: new Text(
              "address2",
              style: new TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text(
              "address2",
            ),
            leading: new Icon(Icons.lightbulb_outline,color: Colors.blueAccent,),
          ),
          new Divider(),
          new ListTile(
            title: new Text(
              "address3",
              style: new TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text(
              "address3",
            ),
            leading: new Icon(Icons.map,color: Colors.blueAccent,),
          )
        ],
      ),
    );
    return MaterialApp(
        title: "Card",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("Card Widget"),
            ),
            body: new Center(
              child: card,
            )));
  }
}
