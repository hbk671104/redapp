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
        child: SafeArea(
          child: Swiper(
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              final String image = images[index];
              return CachedNetworkImage(
                imageUrl: image.split('?')[0],
                placeholder: CupertinoActivityIndicator(),
              );
            },
            viewportFraction: 0.8,
            scale: 0.9,
          ),
        ));
  }
}
