import 'package:flutter/material.dart';
import 'package:doubanflutter/views/aboutMeViews/aboutMeHeader.dart';

class AboutMePage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _AboutMePageState();
    }
}

class _AboutMePageState extends State<AboutMePage> {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('我的'),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index == 0) {
              return AboutMeHeaderView();
            }

            return GestureDetector(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.star),
                    Text("data"),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              onTap: () {
                print('aaaaa  $index');
              },
            );
          },
        ),
      );
    }
}

