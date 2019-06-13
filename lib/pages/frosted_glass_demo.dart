import 'package:flutter/material.dart';
import 'dart:ui'; //图片过滤 用到

class FrostedGlassDemo extends StatefulWidget {
  @override
  _FrostedGlassDemoState createState() => _FrostedGlassDemoState();
}

class _FrostedGlassDemoState extends State<FrostedGlassDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "磨砂玻璃效果",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          //约束性小部件,添加额外的约束条件在child上
          ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Image(image: AssetImage("images/eiffel_tower.jpeg")),
          ),
          Center(
            child: ClipRect(
              //可裁切的矩形
              child: BackdropFilter(
                child: Opacity(
                  opacity: 0.1,
                  child: Container(
                    width: 500.0,
                    height: 100.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        'guc',
                        style: Theme.of(context).textTheme.display2,
                      ),
                    ),
                  ),
                ),
                //背景过滤器
                filter: ImageFilter.blur(
                  //过滤器
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
