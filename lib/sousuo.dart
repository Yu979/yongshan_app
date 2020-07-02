import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SousuoPage extends StatefulWidget{
  @override
  _SousuoPageState createState() =>_SousuoPageState();
}

class _SousuoPageState extends State<SousuoPage>{
  TextEditingController textEditingController = TextEditingController();

  var numList =['1','2','3','4','5'];
  var infoList=['端午节','粽子','咸鸭蛋','皮蛋','小暑'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: TextField(
          controller: textEditingController,
          autofocus: false,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12.0),
            hintText: "搜索...",
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),

          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('取消',style: TextStyle(fontSize: 15,color: Colors.black),),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),

      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 15,),
              Row(
                children: <Widget>[
                  SizedBox(width: 20,),
                  Text('历史记录',style: TextStyle(fontSize: 15,color: Colors.black),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  SizedBox(width: 20,),
              Container(
                child: Text('胃病',style: TextStyle(fontSize: 15,color: Colors.black),),

                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(5.0),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    color: Colors.grey,
                  ),
              ),
                  SizedBox(width: 20,),
                  Container(
                    child: Text('夏日冷饮',style: TextStyle(fontSize: 15,color: Colors.black),),

                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    child: Text('荷叶鸡',style: TextStyle(fontSize: 15,color: Colors.black),),

                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: <Widget>[
                      SizedBox(width: 20,),
                      Text('热搜排行榜',style: TextStyle(fontSize: 15,color: Colors.black),),

                ],
              ),

              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                   leading: new CircleAvatar(child: new Text(numList[0]),backgroundColor: Colors.white,foregroundColor: Colors.deepOrange,),
                    title: Row(
                    children: <Widget>[
                      Text(infoList[0]),
                      SizedBox(width: 5,),
                      Text('HOT',style: TextStyle(color: Colors.red),)
                     ],
                    ),
                    trailing: Text('12345'),
                  ),

                  ListTile(
                    leading: new CircleAvatar(child: new Text(numList[1]),backgroundColor: Colors.white,foregroundColor: Colors.deepOrange,),
                    title: Row(
                      children: <Widget>[
                        Text(infoList[1]),
                        SizedBox(width: 5,),
                        Text('NEW',style: TextStyle(color: Colors.lightGreenAccent),)
                      ],
                    ),
                    trailing: Text('10154'),
                  ),

                  ListTile(
                    leading: new CircleAvatar(child: new Text(numList[2]),backgroundColor: Colors.white,foregroundColor: Colors.deepOrange,),
                    title: Row(
                      children: <Widget>[
                        Text(infoList[2]),

                      ],
                    ),
                    trailing: Text('9564'),
                  ),

                  ListTile(
                    leading: new CircleAvatar(child: new Text(numList[3]),backgroundColor: Colors.white,foregroundColor: Colors.deepOrange,),
                    title: Row(
                      children: <Widget>[
                        Text(infoList[3]),

                      ],
                    ),
                    trailing: Text('4554'),
                  ),

                  ListTile(
                    leading: new CircleAvatar(child: new Text(numList[4]),backgroundColor: Colors.white,foregroundColor: Colors.deepOrange,),
                    title: Row(
                      children: <Widget>[
                        Text(infoList[4]),

                      ],
                    ),
                    trailing: Text('2576'),
                  ),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}