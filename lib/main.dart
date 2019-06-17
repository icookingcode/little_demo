import 'package:flutter/material.dart';
import 'package:little_demo/pages/counter_demo.dart';
import 'package:little_demo/pages/frosted_glass_demo.dart';
import 'package:little_demo/pages/search_bar_demo.dart';
import 'package:little_demo/pages/wrap_layout_demo.dart';

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
      home: WrapLayoutDemo(),
    );
  }
}
