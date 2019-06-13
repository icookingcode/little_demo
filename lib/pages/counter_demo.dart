import 'package:flutter/material.dart';

class CounterHome extends StatefulWidget {
  @override
  _CounterHomeState createState() => _CounterHomeState();
}

class _CounterHomeState extends State<CounterHome>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Keep Alive Demo',
          style: TextStyle(color: Colors.white),
        ),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.directions_transit,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.directions_bike,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Counter(),
          Counter(),
          Counter(),
        ],
      ),
    );
  }
}

class Counter extends StatefulWidget {
  int count;

  Counter({
    this.count = 0,
  });

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> with AutomaticKeepAliveClientMixin {
  void _increaseCounter() {
    setState(() {
      widget.count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '点击+1，点击+1',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Text(
              '${widget.count}',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: _increaseCounter,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
