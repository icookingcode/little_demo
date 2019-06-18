import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:little_demo/pages/right_back_demo.dart';
import 'package:little_demo/pages/tool_tips_demo.dart';

import 'draggable_demo.dart';

class CustomClipperDemo extends StatefulWidget {
  @override
  _CustomClipperDemoState createState() => _CustomClipperDemoState();
}

class _CustomClipperDemoState extends State<CustomClipperDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '路径裁切',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: WaveClipper(offset: 40),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200.0,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2507772378,1245403388&fm=26&gp=0.jpg'),
              ),
            ),
          ),
          MaterialButton(
            child: Text('测试右滑返回'),
            onPressed: (){
              Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>RightBackDemo(),));
            },
          ),
          MaterialButton(
            child: Text('测试轻量级提示效果'),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ToolTipsDemo(),));
            },
          ),
          MaterialButton(
            child: Text('DraggableDemo'),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DraggableDemo(),));
            },
          ),
        ],
      ),
    );
  }
}

///底部弧度
class BottomClipper extends CustomClipper<Path> {
  final int offset;

  BottomClipper({this.offset = 30});

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - offset);
    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width, size.height - offset);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height - offset);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

///波浪
class WaveClipper extends CustomClipper<Path> {
  final int offset;

  WaveClipper({this.offset = 30});

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - offset);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height - offset);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width / 2, size.height-offset);

    var secondControlPoint =
        Offset(size.width * 3 / 4, size.height - 2 * offset);
    var secondEndPoint = Offset(size.width, size.height - offset);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - offset);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
