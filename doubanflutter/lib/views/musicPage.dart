import 'package:flutter/material.dart';
import 'package:doubanflutter/models/appModel.dart';
import 'package:doubanflutter/tools/NetWork.dart';
import 'package:doubanflutter/views/aboutMeViews/appView.dart';

class MusicPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _MusicPageState();
    }
}

class _MusicPageState extends State<MusicPage> {
  
  List appList;
  @override
  void initState() { 
    super.initState();
    
    _reloadData();
  }

  _reloadData() async {
    DateTime now = DateTime.now();
    String dateNow = "${now.year.toString()}-${now.month.toString()}-${now.day.toString()}"; 
    var url = "https://www.chandashi.com/bang/delistdata/genre/0/date/" + dateNow + ".html?page=1&order=rank";
    var response = await HttpUtil().get(url);
    if (response != null) {
      List datas =response["data"];
      if (datas != null) {}
        List list = List.generate(datas.length, (index) {
            var data = datas[index];
            return AppModel.formatModel(data);
        });
        setState(() {
          this.appList = list;
        });
      }
  }


  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('最近下架app'),
        ),
        body: this.appList == null ? Center(child: GestureDetector(child: Text("点击重试"), onTap: () => _reloadData(),),) : ListView.builder(
          itemCount: this.appList.length,
          itemBuilder: (context, index) {
            AppModel model = this.appList[index];
            return AppItemView(appModel: model);
          },
        ),
      );
    }
}