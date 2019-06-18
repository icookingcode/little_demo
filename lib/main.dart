import 'package:flutter/material.dart';
import 'package:little_demo/pages/counter_demo.dart';
import 'package:little_demo/pages/expansion_panel_list_demo.dart';
import 'package:little_demo/pages/expansion_tile_demo.dart';
import 'package:little_demo/pages/frosted_glass_demo.dart';
import 'package:little_demo/pages/search_bar_demo.dart';
import 'package:little_demo/pages/wrap_layout_demo.dart';
import 'package:little_demo/splash_screen.dart';
import 'pages/custom_clipper_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      //自定义主题样本
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: SplashScreen(),
    );
  }
}
