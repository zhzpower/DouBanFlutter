import 'package:flutter/material.dart';


// 空白loading页
class LoadingProgress extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
}