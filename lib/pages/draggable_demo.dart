import 'package:flutter/material.dart';

class DraggableDemo extends StatefulWidget {
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable拖拽控件'),
      ),
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset: Offset(80, 80),
            color: Colors.tealAccent,
          ),
          DraggableWidget(
            offset: Offset(180, 80),
            color: Colors.redAccent,
          ),
          Center(
            child: DragTarget(
              builder: (context,candidateData,rejectedData){
                return Container(
                  width: 200,
                  height: 200,
                  color: _draggableColor,
                );
              },
              onAccept: (Color color) {
                  _draggableColor = color;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DraggableWidget extends StatefulWidget {
  final Offset offset;
  final Color color;

  DraggableWidget({Key key, this.offset, this.color}) : super(key: key);

  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    offset = widget.offset;
    debugPrint('dx = ${offset.dx}|dy = ${offset.dy} ');
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.color,
        child: Container(
          width: 100.0,
          height: 100.0,
          color: widget.color,
        ),
        feedback: Container(
          //拖拽时
          width: 100.0,
          height: 100.0,
          color: widget.color.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity, Offset offset) {
          Offset temp = Offset(offset.dx, offset.dy - 80);
          debugPrint('dx = ${offset.dx}|dy = ${offset.dy} ');
          setState(() {
            this.offset = temp;
          });
        },
      ),
    );
  }
}
