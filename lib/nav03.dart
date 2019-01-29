import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "导航的数据传递和接受", home: FirstPage()));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("找小姐姐要电话"),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("去找小姐姐"),
      onPressed: () {
        _navigateToXiaojiejie(context);
      },
    );
  }
}

/**
 * 加下划线表示是内部的方法
 */
_navigateToXiaojiejie(BuildContext context) async {
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => Xiaojiejie()));
  Scaffold.of(context).showSnackBar(SnackBar(content: Text(result)));
}

class Xiaojiejie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是小姐姐"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("大长腿小姐姐"),
              onPressed: () {
                Navigator.pop(context, "大长腿小姐姐：123456");
              },
            ),
            RaisedButton(
              child: Text("小蛮腰小姐姐"),
              onPressed: () {
                Navigator.pop(context, "小蛮腰小姐姐：784581555");
              },
            ),
            RaisedButton(
              child: Text("圆脸小姐姐"),
              onPressed: () {
                Navigator.pop(context, "圆脸小姐姐：7451554544455");
              },
            ),
          ],
        ),
      ),
    );
  }
}
