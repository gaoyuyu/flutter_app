import 'package:flutter/material.dart';

class ToolTipsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tool Tip Demo"),
      ),
      body: Center(
        child: Tooltip(
          message: "This is a message",
          child: Image.network(
              "https://img1.gamersky.com/image2019/03/20190316_ddw_red_459_5/gamersky_01small_02_20193161638580.jpg"),
        ),
      ),
    );
  }
}
