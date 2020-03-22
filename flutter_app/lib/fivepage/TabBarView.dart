// 导入 相关的控件
import 'package:flutter/material.dart';
import 'package:flutter_app/list.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TabBarViewMe extends StatefulWidget {
  TabBarViewMe({Key key, @required this.id, @required this.title})
      : super(key: key);
  final String id;
  final String title;

  @override
  _MovieDetailState createState() {
    return _MovieDetailState();
  }
}

class _MovieDetailState extends State<TabBarViewMe> {
  void showLongToast() {
    Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      fontSize: 16,
      textColor: Colors.white,
      backgroundColor: Colors.blue,
    );
  }

  void showShortToast() {
    Fluttertoast.showToast(
      msg: "网络连接错误",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      fontSize: 16,
      backgroundColor: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    // 在 Flutter 中，每个控件，都是一个 类
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('搜索列表'),
          centerTitle: true,
          // 右侧行为按钮
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
//              onPressed: showShortToast,
              onPressed: () {
                showLongToast();
              },
            )
          ],
        ),
        drawer: Drawer(
          child: listViewWidget()
        ),
        // 底部的 tabBar
//        backgroundColor: Colors.red,
        bottomNavigationBar: Container(
          // 美化当前的 Container 盒子
          decoration: BoxDecoration(color: Colors.black),
          // 一般高度都是50
          height: 50,
          child: TabBar(
            labelStyle: TextStyle(height: 0, fontSize: 10),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.movie_filter),
                text: '正在热映',
              ),
              Tab(
                icon: Icon(Icons.movie_creation),
                text: '即将上映',
              ),
              Tab(
                icon: Icon(Icons.local_movies),
                text: 'Top250',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            MovieList(mt: 'in_theaters'),
            MovieList(mt: 'coming_soon'),
            MovieList(mt: 'top250'),
          ],
        ),
      ),
    );
  }
}

/**
 * listview摘出去
 */
class listViewWidget extends StatelessWidget{
  void showLongToast() {
    Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      fontSize: 16,
      textColor: Colors.white,
      backgroundColor: Colors.blue,
    );
  }

  void showShortToast() {
    Fluttertoast.showToast(
      msg: "网络连接错误",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      fontSize: 16,
      backgroundColor: Colors.blue,
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountEmail: Text('abc@itcast.cn'),
          accountName: Text('张三'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.gitee.com/uploads/91/465191_vsdeveloper.png?1530762316'),
          ),
          // 美化当前控件的
          decoration: BoxDecoration(
            // 背景图片
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'http://www.liulongbin.top:3005/images/bg1.jpg'))),
        ),
        ListTile(
          onLongPress: showShortToast,
          title: Text('用户反馈'),
          trailing: Icon(Icons.feedback),
        ),
        ListTile(
          onLongPress: showLongToast,
          title: Text('系统设置'),
          trailing: Icon(Icons.settings),
        ),
        ListTile(
          onTap: showLongToast,
          title: Text('我要发布'),
          trailing: Icon(Icons.send),
        ),
        // 分割线控件
        Divider(),
        ListTile(
          title: Text('注销'),
          trailing: Icon(Icons.exit_to_app),
        )
      ],
    );
  }

}
