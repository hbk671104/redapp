import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:redapp/src/container/detail/index.dart';
import 'package:redapp/src/component/navbar.dart';
import 'package:redapp/src/component/content_item.dart';

class ContentList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ContentListState();
}

class ContentListState extends State<ContentList> {
  var data = [];
  int page = 1;

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void loadData() async {
    final request = await http.get(
        'http://api-dev.red.hotnode.cn/posts?keywords=%E4%B8%80%E5%B8%A6%E4%B8%80%E8%B7%AF');
    if (request.statusCode != 200) {
      return;
    }

    final responseData = jsonDecode(request.body);
    setState(() {
      if (page == 1) {
        data = responseData;
        return;
      }
      data.addAll(responseData);
    });
  }

  void getData() {
    page = 1;
    this.loadData();
  }

  void getMoreData() {
    page += 1;
    this.loadData();
  }

  void handleItemPress(item) {
    Navigator.of(context).push(CupertinoPageRoute(
        builder: (BuildContext context) => ContentDetail(
              item: item,
            )));
  }

  Widget buildItem(BuildContext context, int index) {
    final Map item = data[index];
    return ContentItem(
        item: item,
        onPress: () {
          this.handleItemPress(item);
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
          // itemExtent: 396,
          itemBuilder: (BuildContext context, int index) =>
              this.buildItem(context, index)),
    );
  }
}
