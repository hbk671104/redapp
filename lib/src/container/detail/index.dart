import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:redapp/src/component/navbar.dart';

class ContentDetail extends StatelessWidget {
  ContentDetail({Key key, @required this.item}) : super(key: key);
  final Map item;

  @override
  Widget build(BuildContext context) {
    final List images = item['thumbnail_images'];
    return CupertinoPageScaffold(
        navigationBar: NavBar(
          middle: Text(item['name']),
        ),
        child: Container(
          child: Swiper(
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              final image = images[index];
              return CachedNetworkImage(
                imageUrl: image,
                placeholder: CupertinoActivityIndicator(),
                // fit: BoxFit.contain,
              );
            },
          ),
        ));
  }
}
