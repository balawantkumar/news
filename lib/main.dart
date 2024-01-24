import 'package:flutter/material.dart';
import 'package:news/view/home.dart';
import 'package:news/view/spalsh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool showingSplash =true;

  LoadHome(){
    Future.delayed(Duration(seconds: 4),(){
      setState(() {
        showingSplash=false;
      });

    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadHome();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//hffhgjhjhkfghmjufkyrtykrkyryfykfytfdtktsrdtfygukhk.kghhjjlkl;;klkhjhbjmhk,.ll;k;kllkhkghglh;ljkl.nvbghjlkkl/l;
        primarySwatch: Colors.blue,
      ),
      home: showingSplash ? SplashScreen(): HomeScreen(),
    );
  }
}


