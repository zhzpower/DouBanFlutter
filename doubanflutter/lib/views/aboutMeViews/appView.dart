import 'package:flutter/cupertino.dart';
import 'package:doubanflutter/models/appModel.dart';

class AppItemView extends StatelessWidget {

  final AppModel appModel;
  AppItemView({Key key, this.appModel}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            Image.network(this.appModel.artworkUrl60, width: 50, height: 50,),
            Container(
              width: 200,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(this.appModel.trackName, maxLines: 1, overflow: TextOverflow.clip,),
                    Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Text(this.appModel.sellerName, maxLines: 1, overflow: TextOverflow.clip, style: TextStyle(color: Color.fromRGBO(200, 200, 200, 1)),),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Text(" 名次 ${this.appModel.offlineRank}", style: TextStyle(color: Color.fromRGBO(200, 100, 200, 1), fontSize: 13),),
            ),
            Text("类型 (${this.appModel.genre})")
          ],
        ),
      ),
    );
  }
}