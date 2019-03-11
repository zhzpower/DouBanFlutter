import 'package:flutter/material.dart';
import 'package:doubanflutter/models/movieDetail.dart';
import 'package:doubanflutter/tools/NetWork.dart';
import 'package:doubanflutter/tools/Utils.dart';
import 'dart:ui';

class MovieDetailPage extends StatefulWidget {
  MovieDetailPage({Key key, this.moveId}) : super(key:key);
  final moveId;

  @override
    State<StatefulWidget> createState() {
      return _MovieDetailPageState();
    }
}

class _MovieDetailPageState extends State<MovieDetailPage> {

  MovieDetail movieDetail;
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
      setState(() {
        this.movieDetail = MovieDetail.formatModel(response);
      });
    }
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(this.movieDetail == null ? "详情": this.movieDetail.name),
        ),
        body: this.movieDetail == null ? LoadingProgress() : Container(
          child: 
          // CustomScrollView(
            
            
          // ),
          
          Column(
            children: <Widget>[
              Image.network(this.movieDetail.image, width: MediaQuery.of(context).size.width, height:  MediaQuery.of(context).size.width,),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("剧情简介\n",style: TextStyle(color: Color(0xff9b9b9b)),),
                    Text(this.movieDetail.summary),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
}