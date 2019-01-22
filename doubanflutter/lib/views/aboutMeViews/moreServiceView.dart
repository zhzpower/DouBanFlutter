import 'package:flutter/material.dart';

class MoreServiceView extends StatefulWidget {

  final tips;
  MoreServiceView({Key key, this.tips}) : super(key :key);

  @override
    State<StatefulWidget> createState() {
      return _MoreServiceViewState();
    }
}

class _MoreServiceViewState extends State<MoreServiceView> {
  @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Text("更多服务", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Container(
                height: 150,
                child: GridView.builder(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 2
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            child: Icon(Icons.cake, color: Colors.cyan,),
                            onTap: () {
                              print(widget.tips);
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text('设置'),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
}