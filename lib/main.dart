import 'package:flutter/material.dart';

import 'bottom_app_bar_widget.dart';
import 'bottom_navigation_widget.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BottomNavigationBar',
      //自定义主题样本
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: BottomAppBarWidget(),

    );
  }
}
