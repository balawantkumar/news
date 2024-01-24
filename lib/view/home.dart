import 'package:flutter/material.dart';
import 'package:news/controller/FetchNews.dart';
import 'package:news/model/newsArt.dart';
import 'package:news/view/widget/NewsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 bool isLoading=true;

  late NewsArt newsArt;

GetNews()async{
  newsArt=await FetchNews.fetchNews();
  print("***********************************************");
  print(newsArt.newsCnt);
  setState(() {
    isLoading=false;

  });
}



  @override
  void initState() {
  GetNews();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(

        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
          //physics: AlwaysScrollableScrollPhysics(),
        onPageChanged: (value){
          setState(() {
            isLoading=true;
          });
     GetNews();

        },



          itemBuilder: (context, index){





          return isLoading ? Center(child: CircularProgressIndicator(),) : NewsContainer(
              imgUrL:
                 newsArt.imgUrL,
              newsCnt:
                 newsArt.newsCnt,
              newsHead:
                 newsArt.newsHead,
              newsDes:
                 newsArt.newsDes,

              newsUrl:
                  newsArt.newsUrl);


      }),
    );
  }
}
