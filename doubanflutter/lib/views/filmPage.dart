import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:doubanflutter/tools/NetWork.dart';

class FilmPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _FilmPageState();
    }
}

class _FilmPageState extends State<FilmPage> {
  @override
    void initState() {
      print("aaaaa");
      super.initState();
      _pullNet();
    }

  _pullNet() {
    Future u = get(url: "http://www.wanandroid.com/project/list/1/json?cid=1");
  }

  int count = 0;
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: Center(
          child: CupertinoButton(
            child: Text(count.toString()),
            color: Colors.red,
            pressedOpacity: 0.9,
            onPressed: () {
              _pullNet();
              setState(() {
                              count++;
                            });
              CupertinoAlertDialog(title: Text("data"), actions: <Widget>[
                Text("确定"),
              ],);
              print("aaaaa");
            },
          ),
        ),
      );
    }

}