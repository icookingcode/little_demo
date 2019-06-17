import 'package:flutter/material.dart';

class WrapLayoutDemo extends StatefulWidget {
  @override
  _WrapLayoutDemoState createState() => _WrapLayoutDemoState();
}

class _WrapLayoutDemoState extends State<WrapLayoutDemo> {
  List<Widget> list;

  @override
  void initState() {
    super.initState();
    list = List()..add(_buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wrap流式布局Demo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: _width,
            height: _height/2,
            color: Colors.grey,
            child: Wrap(
              children: list,
              spacing: 20.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, _buildPhoto(list.length - 1));
          });
        }
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildPhoto(int index) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.orange,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }
}
