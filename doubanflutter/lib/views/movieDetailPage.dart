import 'package:flutter/material.dart';
import 'package:doubanflutter/tools/NetWork.dart';

class MovieDetailPage extends StatefulWidget {
  MovieDetailPage({Key key, this.moveId}) : super(key:key);
  final moveId;

  @override
    State<StatefulWidget> createState() {
      return _MovieDetailPageState();
    }
}

class _MovieDetailPageState extends State<MovieDetailPage> {

  @override
    void initState() {
      super.initState();
      _headerRefresh();
    }

  _headerRefresh() async {
    final url = 'http://api.douban.com/v2/movie/subject/' + widget.moveId;
    var response = await HttpUtil.getInstance().get(url);
    if (response != null) {
      print(response);
    }
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('详情'),
        ),
        body: Container(
          child: Text(widget.moveId),
        ),
      );
    }
}