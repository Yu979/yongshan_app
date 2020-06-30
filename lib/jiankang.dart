import 'dart:math';

import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage>{

  int check=0;

  List<String> nameItems = <String>[
    '站内好友', '微信好友', '朋友圈', 'QQ好友', 'QQ空间', '复制链接', '设置'
  ];
  List<String> urlItems = <String>[
    'zhannei.png', 'we.png', 'pyq.png', 'QQ.png',
    'kongjian.png', 'fuzhi.png', 'shezhi.png'
  ];

  Widget change(BuildContext context){
    if(check==0){
      return Image.asset('assets/jiankang/zixun.png');

    }else{
      return Image.asset('assets/jiankang/shipu.png');
    }

  }
  @override
  void initState() {
    super.initState();
  }

  Widget _shareWidget(BuildContext context) {
    return new Container(
      height: 250.0,
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: new Container(
              height: 190.0,
              child: new GridView.builder(
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 1.0),
                itemBuilder: (BuildContext context, int index) {
                  return new Column(
                    children: <Widget>[
                      new Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 6.0),
                          child: new Image.asset( 'assets/jiankang/${urlItems[index]}', width: 50.0, height: 50.0, fit: BoxFit.fill, ) ),
                      new Text(nameItems[index])
                    ],
                  );
                },
                itemCount: nameItems.length,
              ),
            ),
          ),
          new Container( height: 0.5, color: Colors.blueGrey, ),
         InkWell(
           child: new Center( child: new Padding(
               padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
               child: new Text( '取  消', style: new TextStyle(fontSize: 18.0, color: Colors.blueGrey), ) ), ),
           onTap: () {
             Navigator.of(context).pop();
           },
         )

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: false,
//        leading: Text('再测一次',textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Colors.black,),),
        title: Row(children: <Widget>[
          Text('再测一次',style: TextStyle(fontSize: 13,color: Colors.black),),
          SizedBox(width: 80,),
          Text('小红帽',style: TextStyle(fontSize: 20,color: Colors.black),),
        ],),
        actions: <Widget>[
          FlatButton(
            child: Text('分享',style: TextStyle(fontSize: 13,color: Colors.black)),
            splashColor: Colors.yellow,
            onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return _shareWidget(context);
                  });

            },
          )
        ],
      ),

      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset('assets/jiankang/renwu.png'),
          ),
          Container(
            child: Image.asset('assets/jiankang/zhinan.png'),
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 35,),
              FlatButton(

                child: Text('专家咨询 ',style: TextStyle(fontSize: 20,color: Colors.black)),
                splashColor: Colors.yellow,
                onPressed: (){
                  setState(() {
                    check=0;
                  });
                },
              ),
              SizedBox(width: 55,),
              FlatButton(

                child: Text('定制食谱 ',style: TextStyle(fontSize: 20,color: Colors.black)),
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