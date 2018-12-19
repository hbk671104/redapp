import 'package:flutter/cupertino.dart';
import 'package:redapp/src/component/navbar.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: NavBar(
          middle: Text('党政学习'),
          trailing: GestureDetector(
            child: Text('下一页'),
            onTap: () {
              Navigator.of(context).pushNamed('/list');
            },
          )),
      child: ListView(
        children: <Widget>[
          Container(
            child: Image.network('https://flutter.io/images/owl.jpg'),
          )
        ],
      ),
    );
  }
}
