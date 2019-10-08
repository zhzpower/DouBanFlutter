
class Movie {
  final String title;//标题
  final String originalTitle;//原标题
  // final RatingBean rating;
  final int collectCount;
  final String subtype;
  final String year;
  final String image;
  final String alt;
  final String id;
  // final List<String> genres;
  // final List<CastsBean> casts;
  // final List<DirectorsBean> directors;

  Movie(this.title, 
      this.originalTitle,
      this.collectCount, 
      this.subtype, 
      this.year, 
      this.image, 
      this.alt, 
      this.id);

  factory Movie.formJson(Map<String, dynamic> json) {
    final images = json['images']['medium'];
    return Movie(json['title'], 
                 json['originalTitle'], 
                 json['collectCount'], 
                 json['subtype'],
                 json['year'],
                 images,  
                 json['alt'], 
                 json['id']);
  }

  static List<Movie> movieList(List<dynamic> list) {
    List<Movie> movieList = List<Movie>.generate(list.length, (index) {
      var obj = list[index];
      return Movie.formJson(obj);
    });
    return movieList;
  }

}