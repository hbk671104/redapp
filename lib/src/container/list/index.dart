import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:convert';
import 'package:redapp/src/component/navbar.dart';

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
    final request = await http.get('http://api.yanse.info/topics?page=$page');
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

  Widget buildItem(BuildContext context, int index) {
    final Map item = data[index];
    final String path = item['thumbnail_path'];
    return CachedNetworkImage(
      imageUrl: path,
      fit: BoxFit.cover,
      fadeInDuration: Duration(milliseconds: 250),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: NavBar(
        middle: Text('讲话/外交'),
      ),
      child: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemExtent: 360,
          itemBuilder: (BuildContext context, int index) =>
              this.buildItem(context, index)),
    );
  }
}
