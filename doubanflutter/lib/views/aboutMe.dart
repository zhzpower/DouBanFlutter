import 'package:flutter/material.dart';
import 'package:doubanflutter/views/aboutMeViews/aboutMeHeader.dart';
import 'package:doubanflutter/views/aboutMeViews/fansView.dart';

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
            if (index == 1) {
              return FansView();
            }

            return Container(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.cyan,),
                          Text(
                            " 第 $index 行",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                  ],
                ),
                onTap: () {
                  print("$index  哈哈");
                },
              ),
            );
          },
        ),
      );
    }
}

