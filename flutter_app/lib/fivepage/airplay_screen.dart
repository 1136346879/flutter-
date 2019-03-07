import 'package:flutter/material.dart';
import 'package:flutter_app/fivepage/idea_list.dart';
import 'package:flutter_app/fivepage/ideaheader.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app/pagedetail/detail.dart';
import 'package:flutter_app/network/requst.dart';
import 'package:flutter_app/model/topic.dart';
import 'package:flutter_app/model/idea.dart';
import 'package:flutter_app/utils/screen.dart';

Dio dio = new Dio();

class airplay_screen extends StatefulWidget {
  @override
  searchListStates createState() {
    return searchListStates();
  }
}

/**
 * listview 展示
 */
class listView extends StatefulWidget {
  @override
  listViewState createState() {
    return new listViewState();
  }
}

/**
 * listview  加载数据
 */
class listViewState extends State<listView> {
  ScrollController _scrollController = ScrollController(); //listview的控制器
  String loadMoreText = "加载中。。。";
  TextStyle loadMoreTextStyle =
      new TextStyle(color: const Color(0xFF999999), fontSize: 14.0);
  var mlist = [];
  var total = 0;
  List<Topic> topics = [];
  List<Idea> ideas = [];
  
  double navAlpha = 0;
  ScrollController scrollController = ScrollController();
  Future<void> fetchData() async {
    var responseJson = await Request.post(action: 'idea_topic');
    List topicJson = responseJson['topic'];
    List ideaJson = responseJson['idea'];
    List<Topic> topics = [];
    topicJson.forEach((datas) {
      topics.add(Topic.fromJson(datas));
    });

    List<Idea> ideas = [];
    ideaJson.forEach((data) {
      ideas.add(Idea.fromJson(data));
    });
    setState(() {
      this.topics = topics;
      this.ideas = ideas;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
    getSearchData(0);
    // _scrollController.addListener(() {
    //   if (_scrollController.position.pixels ==
    //       _scrollController.position.maxScrollExtent) {
    //     print('滑动到了最底部');
    //     getSearchData(2);
    //   }
    // });
scrollController.addListener(() {
      var offset = scrollController.offset;
      if (offset < 0) {
        if (navAlpha != 0) {
          setState(() {
            navAlpha = 0;
          });
        }
      } else if (offset < 50) {
        setState(() {
          navAlpha = 1 - (50 - offset) / 50;
        });
      } else if (navAlpha != 1) {
        setState(() {
          navAlpha = 1;
        });
      }
    });
    //固定写法，初始化滚动监听器，加载更多使用
    // _scrollController.addListener(() {
    //   var maxScroll = _scrollController.position.maxScrollExtent;
    //   var pixel = _scrollController.position.pixels;
    //   // if (maxScroll == pixel && mlist.length < totalSize) {
    //   if (maxScroll == pixel) {
    //     setState(() {
    //       loadMoreText = "正在加载中...";
    //       loadMoreTextStyle =
    //           new TextStyle(color: const Color(0xFF4483f6), fontSize: 14.0);
    //     });
    //     getSearchData(2);
    //   } else {
    //     setState(() {
    //       loadMoreText = "没有更多数据";
    //       loadMoreTextStyle =
    //           new TextStyle(color: const Color(0xFF999999), fontSize: 14.0);
    //     });
    //     getSearchData(2);
    //   }
    // });
  }

  /**
   * 加载更多进度条
   */
  Widget _buildProgressMoreIndicator() {
    return new Padding(
      padding: const EdgeInsets.all(15.0),
      child: new Center(
        child: new Text(loadMoreText, style: loadMoreTextStyle),
      ),
    );
  }

  /**
   * 加载更多（转圈）
   */
  Widget _buildLoadMore() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          // 转圈加载中
          child: new CircularProgressIndicator(),
        ),
      ),
      color: Colors.white70,
    );
  }

  Future getSearchData(int i) async {
    var url = '';
    if (i == 0) {
      url =
          'https://www.easy-mock.com/mock/5c7cac97c64b7d04d10c1da6/com.dx.ss_copy/www.com.dx.ss/prj/search';
    } else if (i == 1 || i == 2) {
      url =
          'https://www.easy-mock.com/mock/5c75f230ce20c029e6dca819/com.dx.ss/www.com.dx.ss/prj/searchrefresh';
    }
    var response = await dio.get(url);
    // 服务器返回的数据
    var result = response.data;
    print(result);
    await Future.delayed(Duration(seconds: 1), () {
      // 今后只要为私有数据赋值，都需要把赋值的操作，放到 setState 函数中，否则，页面不会更新
      setState(() {
        // 通过 dio 返回的数据，必须使用 [] 来访问
        if (i == 1) {
          //刷新
          mlist.clear();
          mlist = result['data'];
          // mlist.insertAll(0, result['data']);
        } else if (i == 0) {
          //加载数据
          mlist = result['data'];
        } else if (i == 2) {
          //加载更多
          mlist.addAll(result['data']);
        }
        total = result['total'];
      });
    });
  }

  /**
   * 下拉刷新方法,为list重新赋值
   */
  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 1), () {
      print('refresh');
      setState(() {
        // 通过 dio 返回的数据，必须使用 [] 来访问
        getSearchData(1);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose(); //移除监听
  }

  /**
   * 加载更多时显示的组件,给用户提示
   */
  Widget _getMoreWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '加载中...',
              style: TextStyle(fontSize: 16.0),
            ),
            CircularProgressIndicator(
              strokeWidth: 1.0,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(children: [
        RefreshIndicator(
          onRefresh: fetchData, //下拉刷新
          child: ListView(
            controller: scrollController, // 上拉加载更多
              children: <Widget>[
                IdeaHeader(topics: topics,),
                IdeaList(ideas: ideas,)
              ]
              ),
          // child: ListView.builder(
          //    padding: const EdgeInsets.all(16.0),
          //   itemBuilder: _renderRow,
          //   itemCount: mlist.length + 1,
          //   controller: _scrollController, // 上拉加载更多
          // )
        ),
         buildNavigationBar(),
      ]),
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
  Widget _renderRow(BuildContext context, int index) {
    // 每次循环，都拿到当前的电影Item项
    if (index != mlist.length) {
      var mItem = mlist[index];
      return GestureDetector(
        onLongPress: () {},
        onTap: () {
          // 跳转到详情
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext ctx) {
            return new MovieDetail(
              id: '27110296',
              title: '无名之辈',
            );
          }));
        },
        //item  最外层  容器
        child: Container(
          height: 80,
          //类似于shape
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.black12))),
          //开始布局  row   Column
          //横向排列
          child: Row(
            children: <Widget>[
              Text('新闻总数量：$total条'),
//              Image.network(mItem['images']['small'],
//                  width: 130, height: 180, fit: BoxFit.cover),
              Container(
                padding: EdgeInsets.only(left: 10),
//                height: 200,
                //竖直排列
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('新闻链接：${mItem['url']}'),
//                    Text('新闻id：${mItem['id']}'),
//                    Text('时间毫秒值：${mItem['sortTime']}'),
//                    Text('豆瓣评分：${mItem['rating']['average']}分'),
                    Text('${mItem['title']}')
                  ],
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return _buildProgressMoreIndicator();
      // return _buildLoadMore();
      // return _getMoreWidget();
    }
  }
}

class searchListStates extends State<airplay_screen> {
  @override
  Widget build(BuildContext context) {
    return listView();
  }
}
