import 'package:flutter/material.dart';
import 'package:little_demo/pages/frosted_glass_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BottomNavigationBar',
      //自定义主题样本
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: FrostedGlassDemo(),
    );
  }
}
