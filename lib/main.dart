import 'package:flutter/cupertino.dart';
import 'src/container/main/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: '红又专',
      home: Main(),
      // routes: {'/a': (BuildContext context) => Main()},
    );
  }
}
