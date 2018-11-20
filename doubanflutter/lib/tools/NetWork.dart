import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';

// http://www.wanandroid.com/project/list/1/json?cid=1
// https://jsonplaceholder.typicode.com/posts


  // 获取数据 http://api.douban.com/v2/movie/in_theaters
  // 搜索 http://api.douban.com/v2/movie/search?tag=喜剧
  // http://api.douban.com/v2/movie/subject/1764796
  // http://api.douban.com/v2/movie/search?q=战狼&count=1
  // http://api.douban.com/v2/movie/top250?start=25&count=25
class  HttpUtil {
  static HttpUtil instance;
  Dio dio;
  Options options;

  static HttpUtil getInstance() {
    if (instance == null) {
      instance = HttpUtil();
    }
    return instance;
  }

  HttpUtil() {
    options = Options(
      baseUrl: '',
      connectTimeout: 5000,
      receiveTimeout: 3000,
      method: 'GET',
      headers: {}
    );

    dio = Dio(options);
  }

  get(@required String url, {data, options, cancelToken}) async {
    print('get请求启动! url：$url ,body: $data');
    Response response;
    try {
      response = await dio.get(
        url,
        data: data,
        cancelToken: cancelToken,
      );
      print('get请求成功!');
    } on DioError catch (e) {
      if (CancelToken.isCancel(e)) {
         print('get请求取消! ' + e.message);       
      } 
      print('get 请求失败: $e');
    }
    return response.data;
  }

  post(@required String url, {data, options, cancelToken}) async {
    print('post请求启动! url：$url ,body: $data');
    Response response;
    try {
      response = await dio.post(
        url,
        data: data,
        cancelToken: cancelToken,
      );
      print('post请求成功!');
    } on DioError catch (e) {
      if (CancelToken.isCancel(e)) {
         print('post请求取消! ' + e.message);       
      } 
      print('post 请求失败: $e');
    }
    return response.data;
  }
}