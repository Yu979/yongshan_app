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
  Widget imageArea = new Column(
        children:<Widget>[
          Container(child:Image.asset('assets/shipu/yufang.png',width: 400.0,fit:BoxFit.fill)),
          SizedBox(height:10.0,),
          Container(child:Image.asset('assets/shipu/bingzhong.png',width: 400.0,fit:BoxFit.fill)),
          SizedBox(height:10.0,),
          Container(child:Image.asset('assets/shipu/binghou.png',width: 400.0,fit:BoxFit.fill)),
          SizedBox(height:10.0,),
          Container(child:Image.asset('assets/shipu/yajiankang.png',width: 400.0,fit:BoxFit.fill))
        ]
    );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:ListView(
        children: <Widget>[
          imageArea,
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
    return Scaffold(
      body:ListView(
        children: <Widget>[

        ],
      ),
    );
  }
}