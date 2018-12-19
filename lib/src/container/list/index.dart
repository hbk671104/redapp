import 'package:flutter/cupertino.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('列表页'),
      ),
      child: ListView(
        children: <Widget>[
          Container(
            child: Image.network(
                'https://img.huffingtonpost.com/asset/579f38881200007404a54711.jpeg?ops=crop_0_104_736_464,scalefit_720_noupscale'),
          )
        ],
      ),
    );
  }
}
