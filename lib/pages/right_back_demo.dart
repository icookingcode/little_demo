import 'package:flutter/cupertino.dart';

class RightBackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          color: CupertinoColors.activeBlue,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>RightBackDemo(),));
            },
          ),
        ),
      ),
    );
  }
}
