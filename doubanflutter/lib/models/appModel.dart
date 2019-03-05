
class AppModel {
// trackId	"899100726"
// trackName	"荔枝-语音直播声临其境"
// artworkUrl60	"https://is5-ssl.mzstatic.com/image/thumb/Purple128/v4/d4/fb/9e/d4fb9e9a-9273-fcca-4b52-96135d8a40d3/source/60x60bb.jpg"
// sellerName	"zhishen wei"
// userRatingCount	"6829"
// releaseDate	"2014-07-27"
// updateDate	"2018-11-27"
// offlineDate	"2019-02-20"
// offlineRank	"9"
// genre	"音乐"
// price	"免费"
    final String trackId;
    final String trackName;
    final String artworkUrl60;
    final String sellerName;
    final String userRatingCount;
    final String releaseDate;
    final String updateDate;
    final String offlineDate;
    final String offlineRank;
    final String genre;
    final String price;

    AppModel(this.trackId, this.trackName, this.artworkUrl60, this.sellerName, this.userRatingCount, this.releaseDate, this.updateDate, this.offlineDate, this.offlineRank, this.genre, this.price);
    // https://www.chandashi.com/bang/delistdata/genre/0/date/2019-02-18.html?page=1&order=rank
  
    static AppModel formatModel(Map<String, Object> dict) {
        var trackId = dict["trackId"];
        var trackName = dict["trackName"];
        var artworkUrl60 = dict["artworkUrl60"];
        var sellerName = dict["sellerName"];
        var userRatingCount = dict["userRatingCount"];
        var releaseDate = dict["releaseDate"];
        var updateDate = dict["updateDate"];
        var offlineDate = dict["offlineDate"];
        var offlineRank = dict["offlineRank"];
        var genre = dict["genre"];
        var price = dict["price"];
        AppModel model = AppModel(trackId, trackName, artworkUrl60, sellerName, userRatingCount, releaseDate, updateDate, offlineDate, offlineRank, genre, price);
        return model;
    }
}