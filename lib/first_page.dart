import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yongshanapp/login.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>{



  @override
  Widget build(BuildContext context){
    return new DefaultTabController(
      length: 2,
      child: Scaffold(

        appBar: AppBar(
          automaticallyImplyLeading: false,
            primary: true,
          backgroundColor: Colors.white,
          centerTitle: true,

          title: TabBar(
              tabs: <Widget>[
                Tab(text: "关注",),
                Tab(text: "发现"),
              ],
              labelStyle: TextStyle(
                fontSize: 20,
              ),
                labelColor:Colors.orange,
                unselectedLabelColor:Colors.black,
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
          body: TabBarView(
            children: <Widget>[
              Container(
                child: Guanzhu(), //TabCar对应tab_car.dart的Class name
              ),
              Container(
                child: Remen(),//TabCar对应tab_transit.dart的Class name
              ),
            ],
          )
      ),
    );
  }
}

class Guanzhu extends StatelessWidget{
  static List _imageUrls = [
       'assets/shouye/tuijian1.png',
       'assets/shouye/tuijian2.png',
       'assets/shouye/tuijian3.png',
  ];

  var _swiper=new Swiper
    (
    itemBuilder: (BuildContext context, int index) {
      return (
          Image.asset(_imageUrls[index], fit: BoxFit.fill,)
      );
    },
    itemCount:_imageUrls.length ,
    pagination: new SwiperPagination(
        builder: DotSwiperPaginationBuilder(
          color: Colors.black54,
          activeColor: Colors.white,
        )),
    viewportFraction: 1.0,
    scale: 1.0,

    scrollDirection: Axis.horizontal,
    autoplay: true,
//    onTap: (index) async {
//       await launch(webs[index]);
//    }
  );


  Widget infoArea = new Container(
    margin: EdgeInsets.only(left: 20,right: 20),
    child: new Column(
      children: <Widget>[
        new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[


          ],
        ),
        new SizedBox(
          height: 10,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
        children: <Widget>[
            IconButton(
              color: Colors.black,
              // 第三方库icon图标
              icon: Image.asset( 'assets/shouye/lingdai.png'),
              iconSize: 40.0,
              onPressed: (){
              },
            ),
             Text('专家')
            ]
            ),

             Column(
              children: <Widget>[
            IconButton(

              color: Colors.black,
              icon: Image.asset( 'assets/shouye/lvsexinxi.png'),
              iconSize: 40.0,

              onPressed: (){

              },
            ),
                Text('用户')
           ]
            ),
            Column(
                children: <Widget>[
                  IconButton(
                    color: Colors.black,
                    icon: Image.asset( 'assets/shouye/shuben.png',),
                    iconSize: 40.0,

                    onPressed: (){

                    },
                  ),
                  Text('知识')
                ]
            )

          ],
        )
      ],
    ),
  );


  Widget imagesArea=new Container(


  child:new Row(
    children: <Widget>[
      Column(
        children: <Widget>[
          Container(
              child: Image.asset('assets/shouye/yaowu.png',width: 180,fit: BoxFit.fill,)
          ),
          Container(
            child: Image.asset('assets/shouye/miaoshu1.png',width: 180,fit: BoxFit.fill),
          ),
          SizedBox(height: 5,),
          Image.asset('assets/shouye/tang.png',width: 180,fit: BoxFit.fill),
        ],
      ),

      Column(
        children: <Widget>[
             Image.asset('assets/shouye/shanyao.png',width: 180,fit: BoxFit.contain,),
             Image.asset('assets/shouye/miaoshu2.png',width: 180,fit: BoxFit.contain,),
          SizedBox(height:5 ,),
          Image.asset('assets/shouye/baixiangguo.png',width: 180,fit: BoxFit.contain,),
        ],
      )
    ],
  ),
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children:<Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: 180.0,
              child: _swiper),

         infoArea,
       SizedBox(height: 10,),
      imagesArea,

        ],
      ),
    );
  }

}

class Remen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children:<Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Text('s')),
        ],
      ),
    );

  }
}