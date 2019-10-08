import 'package:flutter/material.dart';
import 'package:doubanflutter/models/movie.dart';
import 'package:doubanflutter/tools/NetWork.dart';

class BooksPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _BooksPageState();
    }
}
// 
class _BooksPageState extends State<BooksPage> {

  List<Movie> myList;
  @override
    void initState() {
      super.initState();
      _reloadData();
    }

  _reloadData() async {
    final url = 'http://douban.uieee.com/v2/movie/in_theaters?city=上海&start=0&count=10';
    final response = await HttpUtil().get(url);
    if (response != null) {
      setState(() {
              this.myList = Movie.movieList(response['subjects']);
            });
    }
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('图片'),
        ),
        body: this.myList == null ? Container(): Center(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 2
            ),
            itemCount: this.myList.length,
            itemBuilder: (context, index) {
              final item = this.myList[index];
              return Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(item.image, height: 120, width: 80,),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(item.title, style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold, fontSize: 16)),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      );
    }
}
