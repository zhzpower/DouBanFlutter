import 'package:flutter/material.dart';

class AboutMeHeaderView extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _AboutMeHeaderViewState();
    }
}

class _AboutMeHeaderViewState extends State<AboutMeHeaderView> {
  @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.fromLTRB(10, 15, 15, 15),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("dadd民", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text("dadd民"),
              ],
            ),
            Image.network(
              "http://img1.doubanio.com/view/photo/s_ratio_poster/public/p462657443.jpg",
              width: 40,
              height: 40,
              fit: BoxFit.fill,
            )
          ],
        ),
      );
    }
}