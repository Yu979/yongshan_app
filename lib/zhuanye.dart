import 'package:flutter/material.dart';
import 'package:yongshanapp/zhongyike.dart';


class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage>{
  int check=0;

  Widget change(BuildContext context){
    if(check==0){
      return Image.asset('assets/zhuanye/huoyue.png');

    }else{
      return Image.asset('assets/zhuanye/yisheng.png');
    }

  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       primary: true,
       backgroundColor: Colors.white,
       centerTitle: true,
     ),

     body: ListView(
       children: <Widget>[
         SizedBox(height: 20,),
         Image.asset('assets/zhuanye/top.png'),
         SizedBox(height: 15,),

         Column(
           children: <Widget>[
             Row(
               children: <Widget>[
                 SizedBox(width: 20,),
                 Text('热门病情',style: TextStyle(fontSize: 18),),
                 SizedBox(width: 200,),
                 Text('更多>',style: TextStyle(fontSize: 12),),
               ],
             ),
             Row(
               children: <Widget>[
                 SizedBox(width: 5,),
                 Container(
                   height: 80,
                   width: 80,
                   child:  IconButton(
                     icon: Image.asset('assets/zhuanye/huxi.png',height: 200,width: 200,),
                     onPressed: (){
                     },
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 80,
                   width: 80,
                   child:  IconButton(
                     icon: Image.asset('assets/zhuanye/gu.png',height: 200,width: 200,),
                     onPressed: (){
                     },
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 80,
                   width: 80,
                   child:  IconButton(
                     icon: Image.asset('assets/zhuanye/er.png',height: 200,width: 200,),
                     onPressed: (){
                     },
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 80,
                   width: 80,
                   child:  IconButton(
                     icon: Image.asset('assets/zhuanye/neifenmi.png',height: 200,width: 200,),
                     onPressed: (){
                     },
                   ),
                 ),
               ],
             ),


             Row(
               children: <Widget>[
                 SizedBox(width: 5,),
                 Container(
                   height: 80,
                   width: 80,
                   child:  IconButton(
                     icon: Image.asset('assets/zhuanye/zhongyi.png',height: 200,width: 200,),
                     onPressed: (){
                       Navigator.pushNamed(context, "/zhongyi");
                     },
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 80,
                   width: 80,
                   child:  IconButton(
                     icon: Image.asset('assets/zhuanye/chuanran.png',height: 200,width: 200,),
                     onPressed: (){
                     },
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 80,
                   width: 80,
                   child:  IconButton(
                     icon: Image.asset('assets/zhuanye/chang.png',height: 200,width: 200,),
                     onPressed: (){
                     },
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 80,
                   width: 80,
                   child:  IconButton(
                     icon: Image.asset('assets/zhuanye/zhongliu.png',height: 200,width: 200,),
                     onPressed: (){
                     },
                   ),
                 ),
               ],
             )
           ],
         ),

         Row(
           children: <Widget>[
             SizedBox(width: 20,),
             Text('医生推荐',style: TextStyle(fontSize: 18),),
             SizedBox(width: 100,),
             Container(
               height: 30,
               width: 80,
               child:FlatButton(

                 child: Text('最近活跃',style: TextStyle(fontSize: 10,color: Colors.black)),
                 splashColor: Colors.yellow,
                 onPressed: (){
                   setState(() {
                     check=0;
                   });
                 },
               ) ,
             ),

             FlatButton(

               child: Text('人气最高',style: TextStyle(fontSize: 10,color: Colors.black)),
               splashColor: Colors.yellow,
               onPressed: (){
                 setState(() {
                   check=1;
                 });
               },
             ),
           ],
         ),
         Container(
           child: change(context),
         ),
       ],
     ),
   );
  }
}