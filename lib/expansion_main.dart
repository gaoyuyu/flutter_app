import 'package:flutter/material.dart';
import 'expansion_tile.dart';
import 'expansion_panel_list.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
//      home: ExpansionTileDemo(),
      home: ExpansionPanelListDemo(),
    );
  }
}

