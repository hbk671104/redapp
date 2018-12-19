import 'package:flutter/cupertino.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      child: Text('hah1'),
      navigationBar: CupertinoNavigationBar(
        middle: Text('红又专！'),
      ),
    );
  }
}
