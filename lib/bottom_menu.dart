import 'package:flutter/material.dart';
import 'package:yongshanapp/login.dart';
import 'package:yongshanapp/first_page.dart';
import 'package:yongshanapp/jiankang.dart';
import 'package:yongshanapp/shipu.dart';
import 'package:yongshanapp/wode.dart';
import 'package:yongshanapp/zhuanye.dart';

class BottomMenuPage extends StatefulWidget {
  @override
  BottomMenuPageState createState() => BottomMenuPageState();
}
int _currentIndex = 0;  //设置当前显示的页面索引

class BottomMenuPageState extends State<BottomMenuPage>{
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    List<Widget> viewList = [FirstPage(), SecondPage(), ThirdPage(),FourthPage(),FifthPage()];
    return Container(
      child: Scaffold(
        body: viewList[_currentIndex],
        bottomNavigationBar: SafeArea(
          child: BottomNavigationBar(

            items: [
              BottomNavigationBarItem(
                icon: Image.asset("assets/shouye/buttom1.png",height: 28),
                title: Text("首页",style: TextStyle(color: Colors.grey),),
              ),

              BottomNavigationBarItem(
                icon: Image.asset("assets/shouye/buttom2.png",height: 28,),
                title: Text("食谱",style: TextStyle(color: Colors.grey),),

              ),

              BottomNavigationBarItem(
                icon: Image.asset("assets/shouye/buttom3.png",height: 28),
                title: Text("专业",style: TextStyle(color: Colors.grey),),
              ),

              BottomNavigationBarItem(
                icon: Image.asset("assets/shouye/buttom4.png",height: 28),
                title: Text("健康",style: TextStyle(color: Colors.grey),),
              ),

              BottomNavigationBarItem(
                icon: Image.asset("assets/shouye/buttom5.png",height: 28),
                title: Text("我的",style: TextStyle(color: Colors.grey),),
              ),

            ],

            currentIndex: _currentIndex,

            type: BottomNavigationBarType.fixed,//设置类型

            //设置点击响应
            onTap: (int index){         //参数设置为默认的index，这个index就是点击的按钮的index
              setState(() {
                _currentIndex =index;
              });
            },
          ),
        ),
      ),
    );
  }
}