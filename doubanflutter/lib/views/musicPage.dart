import 'package:flutter/material.dart';
import 'package:doubanflutter/models/appModel.dart';

class MusicPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _MusicPageState();
    }
}

class _MusicPageState extends State<MusicPage> with AutomaticKeepAliveClientMixin {
  
  List<AppModel> appList;
  @override
    bool get wantKeepAlive => true;

  @override
  void initState() { 
    super.initState();
    
    _reloadData();
  }

  _reloadData() {

  }


  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('发现'),
        ),
        body: this.appList ==null ? Center(child: Text("app list"),) : ListView.builder(
          itemCount: this.appList.length,
          itemBuilder: (context, index) {
            AppModel model = this.appList[index];
            return Text(model.sellerName);
          },
        ),
      );
    }
}