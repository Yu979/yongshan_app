import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _ShipuPageState createState() => _ShipuPageState();
}

class _ShipuPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context){
    return new DefaultTabController(length: 2,
        child: Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading: false,
                primary: true,
                backgroundColor: Colors.white,
                centerTitle: true,

                title: TabBar(
                  tabs:<Widget>[
                    Tab(text:"病理",),
                    Tab(text:"菜式"),
                  ],
                  labelStyle: TextStyle(
                    fontSize:  20,
                  ),
                  labelColor: Colors.orange,
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 15,
                  ),
                  indicatorPadding : EdgeInsets.zero,
                  indicatorColor: Colors.yellow,
                  indicatorSize:TabBarIndicatorSize.label,
                  indicatorWeight:0.1,
                  indicator: BoxDecoration(
                  ),
                )
            ),
            body:TabBarView(
                children:<Widget>[
                  Container(
                    child: Bingli(),
                  ),
                  Container(
                    child: Caiyao(),
                  )
                ]
            )
        )
    );
  }
}

class Bingli extends StatelessWidget{
  //todo

  //IconButton(
  //              color: Colors.black,
  //              // 第三方库icon图标
  //              icon: Image.asset( 'assets/shouye/lingdai.png'),
  //              iconSize: 40.0,
  //              onPressed: (){
  //              },
  //            ),
  //             Text('专家')
  //            ]

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:ListView(
        children: <Widget>[
          new Column(children:<Widget>[
        OutlineButton(
          child:Image.asset('assets/shipu/yufang.png',width: 400.0,fit:BoxFit.fill),
          onPressed: (){},
          ),
        SizedBox(height:10.0,),
        OutlineButton(
          child:Image.asset('assets/shipu/bingzhong.png',width: 400.0,fit:BoxFit.fill),
          onPressed: (){
             Navigator.push(context,MaterialPageRoute(builder: (context) {
              return Shipu_bingzhong();
          }));}),
         SizedBox(height:10.0,),
         OutlineButton(
           child:Image.asset('assets/shipu/binghou.png',width: 400.0,fit:BoxFit.fill),
           onPressed: (){},
         ),
         SizedBox(height:10.0,),
         OutlineButton(
            child:Image.asset('assets/shipu/yajiankang.png',width: 400.0,fit:BoxFit.fill),
            onPressed: (){},
         )
          ]
          )
        ],
      ),
    );
  }
}

class Caiyao extends StatelessWidget{
  //TODO
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextEditingController textEditingController =new TextEditingController();
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: TextField(
          onTap: (){
            Navigator.pushNamed(context, "/sousuo");
          },
          controller: textEditingController,
          autofocus: false,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12.0),
            hintText: "搜索...",
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),

          ),
        ),

      ),
      body:ListView(
        children: <Widget>[
          SizedBox(height: 10,),
          new Column(
            children:<Widget>[
              Container(child:Image.asset('assets/shipu/caishi/breakfast.png',width: 400.0,fit:BoxFit.fill)),
              new Text('早  餐',textAlign: TextAlign.left),
              SizedBox(height: 5,),
              Container(child:Image.asset('assets/shipu/caishi/lunch.png',width: 400.0,fit:BoxFit.fill)),
              new Text('午  餐',textAlign: TextAlign.left),
              SizedBox(height: 5,),
              Container(child:Image.asset('assets/shipu/caishi/dinner.png',width: 400.0,fit:BoxFit.fill)),
              new Text('晚  餐',textAlign: TextAlign.left,),
              SizedBox(height: 5,),
            ]
          ),

          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset( 'assets/shipu/caishi/dessert.png'),
                      height: 100.0,
                    ),
                    Text('面包甜点')
                  ]
              ),

              Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset( 'assets/shipu/caishi/fruit.png'),
                      height: 100.0,
                    ),
                    Text('水果蔬菜')
                  ]
              ),

              Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset( 'assets/shipu/caishi/vegetable.png'),
                      height: 100.0,
                    ),
                    Text('素   食')
                  ]
              ),
            ],
          ),

          SizedBox(height: 5,),

          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset( 'assets/shipu/caishi/gaijiaofan.png'),
                      height: 100.0,
                    ),
                    Text('米饭主食')
                  ]
              ),

              Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset( 'assets/shipu/caishi/soup.png'),
                      height: 100.0,
                    ),
                    Text('汤   类')
                  ]
              ),

              Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset( 'assets/shipu/caishi/chaomimian.png'),
                      height: 100.0,
                    ),
                    Text('面食小炒')
                  ]
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Shipu_bingzhong extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController =new TextEditingController();
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
           new Column(
             children: <Widget>[
               Container(child: Image.asset('assets/shipu/bingzhong.png',width: 400.0,fit:BoxFit.fill),),
               SizedBox(height: 10.0,),
               TextField(
                 controller: textEditingController,
                 autofocus: false,
                 decoration: InputDecoration(
                   contentPadding: EdgeInsets.all(12.0),
                   hintText: "胃病",
                   border:
                   OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                 ),
               ),
               Text('胃病症',textScaleFactor: 1.5,),
               SizedBox(height: 10.0,),
               Container(child: Image.asset('assets/shipu/bingzhong/binglimingcheng.png',width: 400.0,fit:BoxFit.fill),),
               SizedBox(height: 10.0,),

               new Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 verticalDirection: VerticalDirection.down,
                 children: <Widget>[
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                     Container(child: Image.asset('assets/shipu/bingzhong/hanxiekewei.png'),height: 35.0,),
                     SizedBox(height: 10.0,),
                     Container(child: Image.asset('assets/shipu/bingzhong/yuxuetingwei.png'),height: 35.0,)],
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                     Container(child: Image.asset('assets/shipu/bingzhong/yinshishangwei.png'),height: 35.0,),
                     SizedBox(height:10.0,),
                     Container(child: Image.asset('assets/shipu/bingzhong/weiyinkuihao.png'),height: 35.0,)
                   ],),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                     Container(child: Image.asset('assets/shipu/bingzhong/ganqifanwei.png'),height: 35.0,),
                     SizedBox(height: 10.0,),
                     Container(child: Image.asset('assets/shipu/bingzhong/piweixuhan.png'),height: 35.0,)
                   ],),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[Container(child: Image.asset('assets/shipu/bingzhong/shirezhongzu.png'),height: 35.0,),
                     Container(child: SizedBox(height: 45.0,),)],
                   )
                 ],
               ),
               SizedBox(height: 10.0,),

//               new Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: <Widget>[
//                   Column(children: <Widget>[Container(child: Image.asset('assets/shipu/bingzhong/yuxuetingwei.png'),height: 35.0,)],),
//                   Column(children: <Widget>[Container(child: Image.asset('assets/shipu/bingzhong/weiyinkuihao.png'),height: 35.0,)],),
//                   Column(children: <Widget>[Container(child: Image.asset('assets/shipu/bingzhong/piweixuhan.png'),height: 35.0,)],)
//                 ],
//               ),
//               SizedBox(height: 10.0,),
               
               Container(child:Image.asset('assets/shipu/bingzhong/lowpart.png'),width: 400.0,),
             ],
           )
        ],
      ),
    );
  }
}