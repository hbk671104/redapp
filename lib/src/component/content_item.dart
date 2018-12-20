import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ContentItem extends StatelessWidget {
  ContentItem({Key key, @required this.item, this.onPress}) : super(key: key);

  final Map item;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    final String title = item['name'];
    final String path = item['thumbnail_path'];

    return GestureDetector(
        onTap: onPress,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: new BorderRadius.circular(1),
                    child: CachedNetworkImage(
                      width: 114.5,
                      height: 85.5,
                      imageUrl: path,
                      placeholder: SizedBox(
                        width: 114.5,
                        height: 85.5,
                        child: Center(
                          child: CupertinoActivityIndicator(),
                        ),
                      ),
                      fit: BoxFit.cover,
                      fadeInDuration: Duration(milliseconds: 250),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 14.5),
                        child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  child: Text(
                                title,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(0, 0, 0, 0.85)),
                              )),
                              Container(
                                  child: Text(title,
                                      style: TextStyle(
                                          fontSize: 12,
                                          height: 1.5,
                                          color:
                                              Color.fromRGBO(0, 0, 0, 0.45))))
                            ])),
                  )
                ])));
  }
}
