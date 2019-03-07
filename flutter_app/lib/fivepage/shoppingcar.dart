import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app/pagedetail/detail.dart';
import 'package:flutter_app/utils/screen.dart';
import 'package:flutter_app/banner/pagination.dart';
import 'package:flutter_app/fivepage/_movielist.dart' as movielist;

Dio dio = new Dio();
class shippingcar extends StatefulWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text('shippingcar'),
//          backgroundColor: Colors.deepPurple,
//        ),
//        body: Center(
//          child: Text('shippingcar'),
//        ));
//  }

  @override
  movieListStates createState() {
    return movieListStates();
  }
}

class movieListStates extends State<shippingcar>{
  // 默认显示第一页数据
  int page = 1;
  //透明度
 double navAlpha = 0;
  // 每页显示的数据条数
  int pagesize = 10;

  // 电影列表数据
  var mlist = [];

  // 总数据条数，实现分页效果的
  var total = 0;

//控件被创建的时候  就会执行
  @override
  void initState() {
    super.initState();
    getMovieList();
  }
  //获取电影列表数据
  getMovieList() async {
    // js 中有模板字符串
    // 偏移量的计算公式 (page - 1) * pagesize
    int offset = (page - 1) * pagesize;
    var response = await dio.get(
        'http://www.liulongbin.top:3005/api/v2/movie/top250?start=$offset&count=$pagesize');
    // 服务器返回的数据
    var result = response.data;
    print(result);
    // 今后只要为私有数据赋值，都需要把赋值的操作，放到 setState 函数中，否则，页面不会更新
    setState(() {
      // 通过 dio 返回的数据，必须使用 [] 来访问
      mlist = result['subjects'];
      total = result['total'];
    });
  }
   headerView(){
    return
      Column(
        children: <Widget>[
        Stack(
        //alignment: const FractionalOffset(0.9, 0.1),//方法一
        children: <Widget>[
            Pagination(),//轮播图 banner
            Positioned(//方法二
            top: 10.0,
            left: 0.0,
            // child: DisclaimerMsg(key:key,pWidget:this)
             child:Text('免责声明')
            ),
          ]),
        SizedBox(height: 1, child:Container(color: Theme.of(context).primaryColor)),
        SizedBox(height: 10),
        ],
      );

  }
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        // headerView(),
        new Expanded(
        child: movielist.Movielist(mlist,headerView),
        )
      ]
    );
  }
  
  Widget buildActions(Color iconColor) {
    return Row(children: <Widget>[]);
  }

  Widget buildNavigationBar() {
    return Stack(
      children: <Widget>[
        Positioned(
          right: 0,
          child: Container(
            margin:
                EdgeInsets.fromLTRB(5, Screen.statusBarHeight(context), 0, 0),
            child: buildActions(Colors.white),
          ),
        ),
        Opacity(
          opacity: navAlpha,
          child: Container(
            padding:
                EdgeInsets.fromLTRB(5, Screen.statusBarHeight(context), 0, 0),
            height: Screen.navigationBarHeight(context),
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    '想法',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                buildActions(Colors.black38),
              ],
            ),
          ),
        )
      ],
    );
  }
}

