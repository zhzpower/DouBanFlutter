import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:doubanflutter/tools/NetWork.dart';
import 'package:doubanflutter/models/movie.dart';
import 'package:doubanflutter/tools/Utils.dart';

class FilmPage extends StatefulWidget {
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
    final url = 'https://api.douban.com/v2/movie/subject/';
    var response = await HttpUtil().get(url);
    print(response);
    if (response != null) {
      setState(() {
        widget.movieList = Movie.movieList(response['data']);
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
          title: Text('电影'),
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
                Text(movie.title),
              ],
            ),
          ),
        ),
      );
    }
}