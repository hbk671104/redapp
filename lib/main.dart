import 'package:flutter/cupertino.dart';
import 'package:redapp/src/container/main/index.dart';
import 'package:redapp/src/container/list/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: '红又专',
      home: Main(),
      routes: {
        '/main': (BuildContext context) => Main(),
        '/content_list': (BuildContext context) => ContentList()
      },
    );
  }
}
