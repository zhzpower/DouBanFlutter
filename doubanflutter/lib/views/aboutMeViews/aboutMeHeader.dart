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
        padding: EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "dada民",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text("性别: 男")
                ],
              ),
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