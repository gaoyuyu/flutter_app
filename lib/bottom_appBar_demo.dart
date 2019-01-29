import 'package:flutter/material.dart';
import 'pages/each_view.dart';

class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {

  List<Widget> _eachView;
  int _currentIndex = 0;
  @override
  void initState() {
    _eachView  = List();
    _eachView..add(EachView("Home"))
    ..add(EachView("Email"));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){

            return EachView("New Page");

          }));

        },
        tooltip: "FAB",
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            
            IconButton(icon: Icon(Icons.home,color: Colors.white), onPressed: (){
              setState(() {
                _currentIndex = 0;
              });
            }),
            IconButton(icon: Icon(Icons.email,color: Colors.white), onPressed: (){
              setState(() {
                _currentIndex = 1;
              });
            }),

          ],
          
        ),
        
      ),
    );
  }
}
