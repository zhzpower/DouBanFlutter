import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _MusicPageState();
    }
}

class _MusicPageState extends State<MusicPage> with AutomaticKeepAliveClientMixin {
  
  @override
    bool get wantKeepAlive => true;
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('发现'),
        ),
        body: Center(
          child: Text('发现'),
        ),
      );
    }
}