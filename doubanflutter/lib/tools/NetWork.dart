import 'dart:io';
import 'dart:convert';
import 'package:flutter/foundation.dart';

// http://www.wanandroid.com/project/list/1/json?cid=1
// https://jsonplaceholder.typicode.com/posts

get({@required String url}) async {
  var httpClient = HttpClient();
  var uri = Uri.http(url, "");
  var request = await httpClient.getUrl(uri);
  var response = await request.close();
  if (response.statusCode == HttpStatus.ok) {
      var responseBody = await response.transform(utf8.decoder).join();
      return json.decode(responseBody);
  } else {
    print("{url} 失败");
  }
}