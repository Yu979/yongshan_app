import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yongshanapp/zhongyike.dart';

class ZixunPage extends StatefulWidget{
  @override
  _ZixunPageState createState() =>_ZixunPageState();
}

class _ZixunPageState extends State<ZixunPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 235, 235, 1),
      appBar: AppBar(
        primary: true,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text('智能助手1',style: TextStyle(fontSize: 20,color: Colors.orange),),
      ),

      body: ListView(
        children: <Widget>[

          Image.asset('assets/zhuanye/liaotian.png'),
        ],
      ),
    );
  }
}