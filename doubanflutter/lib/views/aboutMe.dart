import 'package:flutter/material.dart';

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
            return ListTile(
              title: Text("第 $index 行"),
              onTap: () {
                print("$index 行");
              },
            );
          },
        ),
      );
    }
}

