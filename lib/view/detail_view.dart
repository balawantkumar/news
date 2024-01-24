import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class DetailViewScreen extends StatefulWidget {
  String newsUrL;
   DetailViewScreen({super.key,required this.newsUrL});

  @override
  State<DetailViewScreen> createState() => _DetailViewScreenState();
}

class _DetailViewScreenState extends State<DetailViewScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      widget.newsUrL=widget.newsUrL.contains("http:")?
      widget.newsUrL.replaceAll("http", "https") :
      widget.newsUrL;

    });
  }
  final Completer<WebViewController> controller= Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News Snack"),),
      body: WebView(
        initialUrl: widget.newsUrL,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewControllar){
          setState(() {
            controller.complete(webViewControllar);
          });

        },
      ),
    );
  }
}
