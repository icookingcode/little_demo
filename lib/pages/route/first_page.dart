import 'package:flutter/material.dart';
import 'package:little_demo/pages/route/second_page.dart';

import 'custom_route.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'FirstPage',
          style: TextStyle(fontSize: 36.0,color: Colors.white),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
//            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SecondPage()));
//            Navigator.of(context).push(FadeRoute(SecondPage()));
//            Navigator.of(context).push(ScaleRoute(SecondPage()));
//            Navigator.of(context).push(RotationScaleRoute(SecondPage()));
            Navigator.of(context).push(SlideRoute(SecondPage()));
          },
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}
