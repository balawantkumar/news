import 'package:flutter/material.dart';
import 'package:news/view/detail_view.dart';

class NewsContainer extends StatelessWidget {

  String imgUrL;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;

  NewsContainer({super.key,
    required this.imgUrL,
    required this.newsDes,
    required this.newsCnt,
    required this.newsHead,
    required this.newsUrl
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
            height: 300,
            width: MediaQuery
                .of(context)
                .size
                .width,
            fit: BoxFit.cover,
            imgUrL),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text(
                newsHead.length > 60 ?
                "${newsHead.substring(0, 60)}..." : newsHead,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Text(
                newsDes.length > 80 ?
                "${newsDes.substring(0, 80)}..." : newsDes,
                style: TextStyle(fontSize: 16, color: Colors.black38),
              ),
              SizedBox(height: 20,),
              Text(
                newsCnt != "--"
                    ?
                newsCnt.length > 250 ? newsCnt.substring(0, 250) :
                "${newsCnt.toString().substring(0, newsCnt.length - 15)}..."
                    : newsCnt,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),


        Spacer(),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailViewScreen(newsUrL: newsUrl)));
              },
                  child: Text("Read More")),
            ),
          ],
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}
