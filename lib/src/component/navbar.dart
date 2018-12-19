import 'package:flutter/cupertino.dart';

class NavBar extends CupertinoNavigationBar {
  NavBar({Widget middle, Widget trailing})
      : super(
            actionsForegroundColor: Color.fromRGBO(0, 0, 0, 0.85),
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.8),
            middle: middle,
            trailing: trailing);
}
