import 'package:flutter/material.dart';

class GodInfoView extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _GodInfoViewState();
    }
}

class _GodInfoViewState extends State<GodInfoView> {

  @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8.0))
          ),
          height: 127,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("我是大神", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("21,115.00", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text("本月收入", style: TextStyle(fontSize: 12, color: Colors.grey),)
                      )
                    ],
                  ),
                  Container(
                    color: Colors.grey,
                    width: 1,
                    height: 30,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.assistant_photo, color: Colors.red,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text("1个技能接单中", style: TextStyle(fontSize: 12, color: Colors.grey),)
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          ),
      );

      return Container(
        child: Padding(
          child: Column(
            children: <Widget>[
              
            ],
          ),
        ),
      );
    }
}
