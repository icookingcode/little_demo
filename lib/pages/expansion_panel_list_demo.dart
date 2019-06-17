import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  List<int> list;
  List<ExpandStateBean> expandStateList;

  _ExpansionPanelListDemoState() {
    list = List();
    expandStateList = new List();
    for (int i = 0; i < 10; i++) {
      list.add(i);
      expandStateList.add(ExpandStateBean(false, i));
    }
  }

  @override
  void initState() {
    super.initState();
  }
  void _setCurrentIndex(int index,bool isExpand){
    setState(() {
      expandStateList[index].isOpen = !isExpand;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ExpansionPanelListDemo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          children: list.map((index) {
            return ExpansionPanel(
              headerBuilder: (context, isExpanded) => ListTile(
                    title: Text("This is No.$index"),
                  ),
              body: ListTile(
                title: Text('expansion no.$index'),
              ),
              isExpanded: expandStateList[index].isOpen,
            );
          }).toList(),
          expansionCallback:  _setCurrentIndex,
        ),
      ),
    );
  }
}

class ExpandStateBean {
  var isOpen;
  var index;

  ExpandStateBean(this.isOpen, this.index);
}
