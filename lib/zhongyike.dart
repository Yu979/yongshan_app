import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:yongshanapp/zhuanye.dart';
import 'package:yongshanapp/zixun.dart';

class ZhongyiPage extends StatefulWidget{
  @override
  _ZhongyiPageState createState() =>_ZhongyiPageState();
}

class _ZhongyiPageState extends State<ZhongyiPage>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: IconButton(
         icon: Icon(Icons.arrow_back,color: Colors.black,),
         onPressed: (){
           Navigator.pop(context);
         },
       ),
        primary: true,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Text('咨询',style: TextStyle(fontSize: 18,color: Colors.black)),
            splashColor: Colors.yellow,
            onPressed: (){
              Navigator.pushNamed(context, "/zixun");
            },
          )
        ],
      ),
      
      body: ListView(
        children: <Widget>[
          Image.asset('assets/zhuanye/zhongyixinxi.png'),
         SizedBox(height: 30,),
          Container(
            child: Row(
              children: <Widget>[
                SizedBox(width: 140,),
                Text('科室医生',style: TextStyle(fontSize: 20),),
              ],
            )
          ),
          SizedBox(height: 10,),

          Image.asset('assets/zhuanye/keshiyisheng.png'),

        ],


      ),
    );
  }
}