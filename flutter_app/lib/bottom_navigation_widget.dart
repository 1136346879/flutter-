import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/fivepage/airplay_screen.dart';
import 'package:flutter_app/fivepage/email_screen.dart';
import 'package:flutter_app/fivepage/HomeScreen.dart';
import 'package:flutter_app/fivepage/pages_screen.dart';
import 'package:flutter_app/fivepage/shoppingcar.dart';
import 'package:flutter_app/ToastShow.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/fivepage/TabBarView.dart';
import 'package:flutter_app/pagedetail/feedbackDetail.dart';
import 'package:flutter_app/pagedetail/welcomePage.dart';
import 'package:flutter_app/everypage/every_page.dart';
import 'package:flutter_app/me/me_page.dart';

/**
 * 主页
 */

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationWidgetState();
  }
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _tabIndex = 0;
  final _BottomNavigationWidgetColor = Colors.blue;
  List<Widget> list = [];

  @override
  void initState() {
    super.initState();
    list
      ..add(HomeScreen())
      ..add(emile_screen())
      ..add(pages_screen())
      ..add(airplay_screen())
      ..add(shippingcar())
       ..add(MePage());
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('你好，Flutter!'),
          centerTitle: true,
          // 右侧行为按钮
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
//              onPressed:ToastShow().showShortToast('搜索'),
              onPressed: () {
                ToastShow().showLongToast('搜索');

                // 跳转到电影列表页
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext ctx) {
                      return TabBarViewMe(
                        id: '27110296',
                        title: '无名之辈',
                      );
                    }));
              },
            )
          ],
        ),
        drawer: Drawer(
          child: listView(),
        ),
//        backgroundColor: Colors.green,
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 24.0,
          items: [
            BottomNavigationBarItem(
              label: 'home',
                icon: Icon(Icons.home, color: _BottomNavigationWidgetColor),
                activeIcon: Text('home',
                    style: TextStyle(color: _BottomNavigationWidgetColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: _BottomNavigationWidgetColor,
                ),
                label: 'Email',
                activeIcon: Text('Email',
                    style: TextStyle(color: _BottomNavigationWidgetColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: _BottomNavigationWidgetColor,
                ),
                label: 'Pages',
                activeIcon: Text('Pages',
                    style: TextStyle(color: _BottomNavigationWidgetColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: _BottomNavigationWidgetColor,
                ),
                label: 'AipPlay',
                activeIcon: Text('AipPlay',
                    style: TextStyle(color: _BottomNavigationWidgetColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.shopping_cart,
                  color: _BottomNavigationWidgetColor,
                ),
                label: '购物车',
                activeIcon: Text('购物车',
                    style: TextStyle(color: _BottomNavigationWidgetColor))),
                       BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person,
                  color: _BottomNavigationWidgetColor,
                ),
                           label: '我的',
                           activeIcon: Text('我的',
                    style: TextStyle(color: _BottomNavigationWidgetColor))),
          ],
          type: BottomNavigationBarType.fixed,
          //设置当前的索引
          currentIndex: _tabIndex,
          //tabBottom的点击监听
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ),
        body: list[_tabIndex],
      ),
    );
  }
}
/**
 * listview 展示
 */
class listView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountEmail: Text('1136346879@qq.com'),
          accountName: Text('汪栋邢'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553753128974&di=2bc8807e1e33707505bd6014c4fbe56a&imgtype=0&src=http%3A%2F%2Fimg3.cache.netease.com%2Fedu%2F2011%2F8%2F9%2F20110809155116bf4a3.jpg'),
          ),
          // 美化当前控件的
          decoration: BoxDecoration(
            // 背景图片
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg'))),
        ),
        ListTile(
          onTap: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctc){
              return feedbackDetail(key);
            }));
          },
          onLongPress: () {
            ToastShow().showShortToast('用户反馈');
            Navigator.pop(context);
          },
          title: Text('用户反馈'),
          trailing: Icon(Icons.feedback),
        ),
        ListTile(
          onLongPress: () {
            ToastShow().showShortToast('系统设置');
            Navigator.pop(context);
          },
          title: Text('系统设置'),
          trailing: Icon(Icons.settings),
        ),
        ListTile(
          onTap: () {
            ToastShow().showShortToast('flutter-widget基础');
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
              return every_page(key);
            }));
          },
          title: Text('flutter-widget基础'),
          trailing: Icon(Icons.send),
        ),
        ListTile(
          onLongPress: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
              return welcomePage(key);
            }));
          },
          onTap: () {
            Navigator.pop(context);
            ToastShow().showShortToast('欢迎页面');
          },
          title: Text('欢迎页面(长按有惊喜)'),
          trailing: Icon(Icons.accessibility),
        ),
        // 分割线控件
        Divider(),
        ListTile(
          onTap: () async {
            Navigator.pop(context);
            ToastShow().showShortToast('我要退出app了');
            await pop();
          },
          title: Text('注销'),
          trailing: Icon(Icons.exit_to_app),
        )
      ],
    );
  }
  //退出app
  static Future<void> pop() async {
    await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }

}
