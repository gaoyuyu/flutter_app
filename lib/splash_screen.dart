import 'package:flutter/material.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //跳转后结束动画
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => MyHomePage()),
            (route) => route == null);
      }
    });
    //播放动画
    _controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network("http://timgsa.baidu.com/timg?image&quality=80&size=b99"
          "99_10000&sec=1546851657199&di=fdd278c2029f7826790191d59279dbbe&imgty"
          "pe=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0112cb55443809000001"
          "9ae93094f1.jpg%401280w_1l_2o_100sh.jpg",scale: 2.0,fit: BoxFit.cover,),
    );
  }
}
