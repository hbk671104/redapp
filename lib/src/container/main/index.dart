import 'package:flutter/cupertino.dart';
import 'package:redapp/src/component/navbar.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: NavBar(
          middle: Text('党政学习'),
        ),
        child: Center(
          child: GestureDetector(
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/320px-Flag_of_the_People%27s_Republic_of_China.svg.png'),
              onTap: () {
                Navigator.of(context).pushNamed('/content_list');
              }),
        ));
  }
}
