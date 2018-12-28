import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:doubanflutter/tools/NetWork.dart';
import 'package:doubanflutter/models/movie.dart';
import 'package:doubanflutter/tools/Utils.dart';

class FilmPage extends StatefulWidget {
  String title = "电影";
  List<Movie> movieList;
  bool isLoad;
  ScrollController scrollController = ScrollController();

  @override
    State<StatefulWidget> createState() {
      return _FilmPageState();
    }
}

class _FilmPageState extends State<FilmPage> {

  @override
    void initState() {
      super.initState();
      widget.scrollController.addListener(() {
        if (widget.scrollController.position.pixels == widget.scrollController.position.maxScrollExtent) {
          _pullNet();
        }
      });
      _pullNet();
    }

  // 获取数据
  _pullNet() async {
    final url = 'http://api.douban.com/v2/movie/top250?start=25&count=20';
    var response = await HttpUtil().get(url);
    if (response != null) {
      setState(() {
        widget.title = response['title'];
        widget.movieList = Movie.movieList(response['subjects']);
      });
    }
  }

  // 空白页
  _loading() {
    return LoadingProgress();
  }

  // 数据页
  _body() {
    return ListView.builder(
        controller: widget.scrollController,
        itemCount: widget.movieList.length,
        itemBuilder: (context, index) {
          Movie movie = widget.movieList[index];
          return MovieItem(movie: movie);
        },
    );
  }

  int count = 0;
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: widget.movieList == null ? _loading() : _body(),
      );
    }
}

class MovieItem extends StatelessWidget {
  final Movie movie;
  MovieItem({this.movie}) : super(key: ObjectKey(movie));

  @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: () {
          print(movie.title);
        },
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Image.network(
                  movie.image,
                  width: 100.0,
                  height: 150.0,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(movie.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 20, 10, 30),
                            child: Text(movie.year, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                          ),
                        Container(
                          child: Text(movie.alt, maxLines: 2, softWrap: true, style: new TextStyle(fontSize: 16.0), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
}