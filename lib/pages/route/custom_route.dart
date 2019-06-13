import 'package:flutter/material.dart';

class FadeRoute extends PageRouteBuilder {
  final Widget widget;
  ///渐隐渐现的路由动画效果
  FadeRoute(this.widget)
      : super(
          transitionDuration: Duration(seconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation1,
              Animation<double> animation2) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
              Widget widget) {
            return FadeTransition(
              opacity: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
              child: widget,
            );
          },
        );
}
class ScaleRoute extends PageRouteBuilder {
  final Widget widget;
  ///缩放的路由动画效果
  ScaleRoute(this.widget)
      : super(
          transitionDuration: Duration(seconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation1,
              Animation<double> animation2) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
              Widget widget) {
            return ScaleTransition(
              scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
              child: widget,
            );
          },
        );
}
class RotationScaleRoute extends PageRouteBuilder {
  final Widget widget;
  ///旋转+缩放的路由动画效果
  RotationScaleRoute(this.widget)
      : super(
          transitionDuration: Duration(seconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation1,
              Animation<double> animation2) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
              Widget widget) {
            return RotationTransition(//旋转
              turns: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
              child:  ScaleTransition(//缩放
                scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
                child: widget,
              ),
            );
          },
        );
}
class SlideRoute extends PageRouteBuilder {
  final Widget widget;
  ///左进左出的路由动画效果
  SlideRoute(this.widget)
      : super(
          transitionDuration: Duration(milliseconds: 300),
          pageBuilder: (BuildContext context, Animation<double> animation1,
              Animation<double> animation2) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
              Widget widget) {
            return SlideTransition(//旋转
              position: Tween<Offset>(begin: Offset(-1.0, 0.0),end: Offset(0.0, 0.0)).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
              child:  widget,
            );
          },
        );
}
