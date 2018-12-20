import 'package:flutter/cupertino.dart';
import 'package:redapp/src/component/navbar.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: NavBar(
          middle: Text('党政学习'),
        ),
        child: SafeArea(
            child: Center(
                child: CupertinoButton(
                    child: Text('开始学习', style: TextStyle(fontSize: 40)),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/content_list');
                    }))));
  }
}
