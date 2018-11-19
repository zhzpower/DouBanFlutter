import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'views/filmPage.dart';
import 'views/musicPage.dart';
import 'views/booksPage.dart';

void main() => runApp(MyApp());
// https://github.com/rhymelph/flutter_douban

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabbarPage(),
    );
  }
}

class TabbarPage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
      return _TabbarPageState();
    }
}

class _TabbarPageState extends State<TabbarPage> {
  
  int _currentIndex = 0;

  var _pageList = [
    FilmPage(),
    BooksPage(),
    MusicPage()
  ];

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: IndexedStack(
          children: _pageList,
          index: _currentIndex,
        ),
        bottomNavigationBar: CupertinoTabBar(
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(title: Text("电影"), icon: Icon(Icons.wifi)),
            BottomNavigationBarItem(title: Text("图片"), icon: Icon(Icons.wifi)),
            BottomNavigationBarItem(title: Text("音乐"), icon: Icon(Icons.wifi)),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      );
    }
}
  