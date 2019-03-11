

class MovieDetail {
  // 电影名
  String name = "详情";
  // 海报
  final String image;
  // 观看量
  final int reviewsCount;
  // id
  final String id;
  // 分享地址
  // 演员s
  final List casts;
  // 导演s
  final List directors;
  // 简要
  String summary = "";
  // aka
  final List aka;

  MovieDetail(this.name, this.image, this.reviewsCount, this.id, this.casts, this.directors, this.summary, this.aka);
 
  static MovieDetail formatModel(Map map) {
    final name = map["title"];
    final image = map["images"]["medium"];
    final reviewsCounts = map["reviews_count"];
    final id = map["id"];
    final casts = map["casts"];
    final directors = map["directors"];
    final summary = map["summary"];
    final aka = map["aka"];
    return MovieDetail(name, image, reviewsCounts, id, casts, directors, summary, aka);
  }
}