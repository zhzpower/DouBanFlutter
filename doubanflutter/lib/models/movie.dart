import 'package:flutter/material.dart';

class Movie {
  final String title;//标题
  final String originalTitle;//原标题
  // final RatingBean rating;
  final int collectCount;
  final String subtype;
  final String year;
  // final ImagesBean images;
  final String alt;
  final int id;
  // final List<String> genres;
  // final List<CastsBean> casts;
  // final List<DirectorsBean> directors;

  Movie(this.title, this.originalTitle, this.collectCount, this.subtype, this.year, this.alt, this.id);

  factory Movie.formJson(Map<String, dynamic> json) {
    return Movie(json['title'], json['originalTitle'], json['collectCount'], json['subtype'], json['year'], json['alt'], json['id']);
  }

  static List<Movie> movieList(Map<String, dynamic> json) {
    List<Movie> movieList = List<Movie>.generate(json['datas'].length, (index) {
      var obj = json['datas'][index];
      return Movie.formJson(obj);
    });
    return movieList;
  }

}