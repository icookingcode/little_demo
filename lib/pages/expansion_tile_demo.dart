import 'package:flutter/material.dart';
class ExpansionTileDemo extends StatefulWidget {
  @override
  _ExpansionTileDemoState createState() => _ExpansionTileDemoState();
}

class _ExpansionTileDemoState extends State<ExpansionTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionTileDemo',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: ExpansionTile(
          leading: Icon(Icons.ac_unit),
          title: Text('Expansion Tile'),
          initiallyExpanded: true,
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('List Tile'),
              subtitle: Text('subtitle'),
            ),
          ],
        ),
      ),
    );
  }
}
