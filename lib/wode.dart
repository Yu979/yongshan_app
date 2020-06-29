import 'package:flutter/material.dart';

class FifthPage extends StatefulWidget {
  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
          title: Text("个人信息", textAlign:TextAlign.center,style: TextStyle(fontSize: 20.0,color: Colors.black),

          ),

        ),

      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 30, 15, 15),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/wode/touxiang.png",),
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(width: 20.0,),
                  Column(
                    children: <Widget>[
                    Text('用户名：小红帽',style: TextStyle(fontSize: 18.0),textAlign: TextAlign.start,),
                      Row(
                        children: <Widget>[
                          Container(
                            width:50,
                            height: 50,
                            child: Image.asset("assets/wode/guanzhu.png",width: 50,height: 50,),
                          ),

                          SizedBox(width: 8,),
                          Container(
                            width:50,
                            height: 50,
                            child: Image.asset("assets/wode/fensi.png",width: 50,height: 60,),
                          ),
                          SizedBox(width: 8,),
                          Container(
                            width:50,
                            height: 50,
                            child: Image.asset("assets/wode/huozan.png",width: 50,height:63,),
                          ),
                        ],
                      )
                   ]
                  )

                ],
              ),

            ),
          ),

          Row(
            children: <Widget>[
              SizedBox(width: 20,),

              Container(
                width: 150,
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: (){},
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/wode/huiyuan.png",width: 50,height: 50,),
                      Text('会员',style: TextStyle(fontSize: 15,color: Colors.black),)
                    ],
                  ),
                ),
              ),



                 SizedBox(width: 20,),

              Container(
                width: 150.0,
                child:   RaisedButton(
                  color: Colors.white,
                  onPressed: (){
                    showDialog<Null>(
                      context: context,
                      builder: (BuildContext context) {
                        return new SimpleDialog(
                          children: <Widget>[
                            Container(
                              child: Image.asset("assets/wode/chenggong.png"),
                            ),
                          ],
                        );
                      },
                    ).then((val) {
                      print(val);
                    });
                  },
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/wode/qiandao.png",width: 50,height: 50,),
                      Text('签到',style: TextStyle(fontSize: 15,color: Colors.black),)
                    ],
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 20,),
          Container(
            child: Image.asset("assets/wode/neirong.png"),
          ),
        ],
      ),
    );
  }
}