import 'package:flutter/material.dart';
import 'package:little_demo/pages/custom_clipper_demo.dart';

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
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => CustomClipperDemo()),
        (route)=>route == null);
      }
    });
    _controller.forward();//播放动画
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child:Image(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://hbimg.huabanimg.com/828e72e2855b51a005732f4e007c58c92417a61e1bcb1-61VzNc_fw658'),
      ),
    );
  }
}
