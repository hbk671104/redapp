import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:redapp/src/component/navbar.dart';

class ContentList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentListState();
  }
}

class ContentListState extends State<ContentList> {
  final String uri = 'http://api.yanse.info/topics';
  List data;

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  getData() async {
    final request = await http.get(uri);
    setState(() {
      data = jsonDecode(request.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: NavBar(
        middle: Text('讲话/外交'),
      ),
      child: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          final Map item = data[index];
          final String path = item['thumbnail_path'];
          return Image.network(path);
        },
      ),
    );
  }
}
