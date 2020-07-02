import 'package:flutter/material.dart';
import 'package:yongshanapp/login.dart';
import 'package:yongshanapp/first_page.dart';
import 'package:yongshanapp/bottom_menu.dart';
import 'package:yongshanapp/shipu.dart';
import 'package:yongshanapp/zhongyike.dart';
import 'package:yongshanapp/zixun.dart';
import 'package:yongshanapp/sousuo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Yongshan Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(0xFF, 251, 108, 0),
      ),
      home: LoginPage(),

      routes: {
        "/login":(_) =>LoginPage(),
        "/first":(_) =>FirstPage(),
        "/bottomMenu":(_) =>BottomMenuPage(),
        "/shipu":(_)=>SecondPage(),
        "/zhongyi":(_)=>ZhongyiPage(),
        "/zixun" :(_)=>ZixunPage(),
        "/sousuo":(_)=>SousuoPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

