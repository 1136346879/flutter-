import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  MovieDetail({Key? key, @required this.id, @required this.title})
      : super(key: key);
  final String? id;
  final String? title;

  @override
  _MovieDetailState createState() {
    return _MovieDetailState();
  }
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

//      body:Text('电影Id为：${widget.id}'),
//      backgroundColor: Colors.red,
      body: Center(

        child: Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.black12))),
            //单个textview
//        child: new Text('nihao',style: TextStyle(fontSize: 40,color: Colors.red)).build(context),
//        alignment: Alignment.bottomCenter,
            //
            child: Row(
              children: <Widget>[

//            Positioned(
//            childImage.network('http://yt.cxicst.com/timg.png),
//            alignment: Alignment. centerLeft
//            child: Container(
//                margin: EdgeInsets only (left: 5)
//            width:ScenAdapter. width(38)
//          height:ScenAdapter. width(38)
//        child:Image.network('http://yt.cxicst.com/top.png')
//    )
//    ),
//                new DecoratedBox(
//                  decoration: new BoxDecoration(
//                    image: new DecorationImage(
////                      image: NetworkImage(
////                          'https://images.gitee.com/uploads/91/465191_vsdeveloper.png?1530762316'),
//
//  image: new AssetImage('assets/img/flutter_get_package.png',),
//                    ),
//                  ),
//                ),
            Image.asset('img/flutter_get_package.png', width: 0, height: 180, fit: BoxFit.cover),
                Image.network('https://images.gitee.com/uploads/91/465191_vsdeveloper.png?1530762316',
                    width: 130, height: 180, fit: BoxFit.cover),

//            Container( margin: EdgeInsets only (left: 5)
//                    width:ScenAdapter. width(38)
//                  height:ScenAdapter. width(38)
//                child:Image.network('http://yt.cxicst.com/top.png')
//            )
                Container(
                  height: 200,
                  padding: EdgeInsets.only(left:10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Text('电影名字：${widget.title}京东if就傲娇的搜啊都安静m',overflow: TextOverflow.ellipsis,
                      ),
                      Text('电影id：${widget.id}'),
                      Text('电影名字：${widget.title}'),
                      Text('电影id：${widget.id}')

                    ],
                  ),
                )

              ],

            )),
      ),
    );
  }
}







