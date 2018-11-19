import 'package:flutter/material.dart';

class BooksPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _BooksPageState();
    }
}

class _BooksPageState extends State<BooksPage> with AutomaticKeepAliveClientMixin {
  
  @override
    bool get wantKeepAlive => true;
    
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('消息'),
        ),
        body: Center(
          child: Text('消息'),
        ),
      );
    }
}