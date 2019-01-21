import 'package:flutter/material.dart';

class FansView extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _FansViewState();
    }
}

class _FansViewState extends State<FansView> {
  createMyView(String text, int totalNum, String tipsNum) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(2, 1, 2, 1),
                child: Text(tipsNum, style: TextStyle(fontSize: 10, color: Colors.white),),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(10)
              ),
        )
          ],
        ),
        Text(totalNum.toString()),
        Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
      ],
    );
  }

  @override
    Widget build(BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          createMyView("粉丝", 100, "+10"),
          createMyView("关注", 50, "+32"),
          createMyView("浏览", 102, "+10"),
          createMyView("足迹", 66, "+99"),
        ],
      );
    }
}