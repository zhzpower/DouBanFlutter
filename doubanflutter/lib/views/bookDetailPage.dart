
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class BookPageDetail extends StatefulWidget {
  BookPageDetail({Key key}) : super(key: key);

  _BookPageDetailState createState() => _BookPageDetailState();
}

class _BookPageDetailState extends State<BookPageDetail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.black26,
          bottom: TabBar(
            // isScrollable: true,
            indicatorColor: Colors.red,
            indicatorWeight: 3,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
          
            tabs: <Widget>[
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(

          children: <Widget>[
            Card(child: Center(child: Text("第一页",)),),
            Card(child: Center(child: Text("哈哈, 第二页, 哈哈",)),),
            Card(child: Center(child: Text("最后一页",)),),
          ],
        ),
      )
    ); 
  }
}