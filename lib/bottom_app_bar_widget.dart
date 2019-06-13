import 'package:flutter/material.dart';
import 'pages/each_view.dart';

class BottomAppBarWidget extends StatefulWidget {
  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  List<Widget> _eachView;
  int _index = 0;

  @override
  void initState() {
    _eachView = List();
    _eachView
      ..add(EachView('Home'))
      ..add(EachView('Email'))
      ..add(EachView('Pages'))
      ..add(EachView('Airplay'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        tooltip: '新增',
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => EachView('New Page'),
          ));
        },
      ),
      body: _eachView[_index],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(), //设置与FloatingActionButton融合方式
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _index = 0;
                  });
                }),
            IconButton(
                icon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _index = 1;
                  });
                }),
            IconButton(
                icon: Icon(
                  Icons.pages,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _index = 2;
                  });
                }),
            IconButton(
                icon: Icon(
                  Icons.airplay,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _index = 3;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
