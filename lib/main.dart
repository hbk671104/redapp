import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '红又专',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('红又专'),
          ),
          body: ListView(
            children: <Widget>[
              Container(child: Text('哈哈哈')),
              Container(margin: EdgeInsets.only(top: 16.0), child: Text('哈哈哈'))
            ],
          ),
        ));
  }
}
