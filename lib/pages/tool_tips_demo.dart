import 'package:flutter/material.dart';
class ToolTipsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('轻量级提示'),),
      body: Center(
        child: Container(
          height: 120,
          width: MediaQuery.of(context).size.width,
          child: Tooltip(
          message: '不要碰我，我怕痒！',
          child:Image(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=891209561,3636218284&fm=26&gp=0.jpg'),
          ),
        ),
        ),
      ),
    );
  }
}
