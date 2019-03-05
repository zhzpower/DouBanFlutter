import 'package:flutter/material.dart';
import 'package:doubanflutter/models/appModel.dart';
import 'package:doubanflutter/tools/NetWork.dart';

class MusicPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _MusicPageState();
    }
}

class _MusicPageState extends State<MusicPage> with AutomaticKeepAliveClientMixin {
  
  List appList;
  @override
    bool get wantKeepAlive => true;

  @override
  void initState() { 
    super.initState();
    
    _reloadData();
  }

  _reloadData() async {
    final url = "https://www.chandashi.com/bang/delistdata/genre/0/date/2019-02-18.html?page=1&order=rank";
    var response = await HttpUtil().get(url);
    if (response != null) {
      List datas =response["data"];
      List list;
      for (var data in datas) {
        AppModel model = AppModel.formatModel(data);
        list.add(model);
        print(model.sellerName);
      }
      setState(() {
        this.appList = list;
      });
    }
  }


  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('发现'),
        ),
        body: this.appList == null ? Center(child: GestureDetector(child: Text("点击重试"), onTap: () => _reloadData(),),) : ListView.builder(
          itemCount: this.appList.length,
          itemBuilder: (context, index) {
            AppModel model = this.appList[index];
            return Text(model.sellerName);
          },
        ),
      );
    }
}