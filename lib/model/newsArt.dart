class NewsArt{
  String imgUrL;
  String newsCnt;
  String newsHead;
  String newsDes;
  String newsUrl;


  NewsArt({
    required this.imgUrL,
    required this.newsCnt,
    required this.newsHead,
    required this.newsDes,
    required this.newsUrl

});




 static NewsArt fromAPItoApp(Map<String,dynamic>articles){
    return NewsArt(imgUrL: articles["urlToImage"]?? "https://media.licdn.com/dms/image/D5612AQG_C-i0HH6umQ/article-cover_image-shrink_600_2000/0/1670208535958?e=2147483647&v=beta&t=1vpGRGVGLALUMjNv2l1q4wrDmHhtBqEA3LQGTajJQaM",
        newsCnt: articles["content"]?? "---",
        newsHead: articles["title"]?? "---",
        newsDes: articles["description"]?? "---",
        newsUrl: articles["url"]?? "https://thehackernews.com/");
  }

}