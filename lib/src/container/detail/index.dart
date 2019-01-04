import 'package:flutter/cupertino.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import 'package:redapp/src/component/navbar.dart';

class ContentDetail extends StatelessWidget {
  ContentDetail({Key key, @required this.item}) : super(key: key);
  final Map item;

  @override
  Widget build(BuildContext context) {
    // final List images = item['thumbnail_images'];
    final String html = item['content'];
    return CupertinoPageScaffold(
        navigationBar: NavBar(
          middle: Text(
            item['title'],
            maxLines: 1,
          ),
        ),
        child: ListView(
          children: <Widget>[
            HtmlView(
              data: html,
            )
          ],
        ));
  }
}
