

class MovieDetail {
  // 电影名
  final String name;
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
  final String summary;
  // aka
  final List aka;

  MovieDetail(this.name, this.image, this.reviewsCount, this.id, this.casts, this.directors, this.summary, this.aka);

  // static List<MovieDetail>formatModelList(List list) {
  //   List<MovieDetail> details = List.generate(list.length, (index) {

  //   });
  //   return details;
  // }

  static MovieDetail formatModel(Object map) {
    

    return MovieDetail('name', 'image', 12, 'id', [], [], 'summary', []);
  }
}