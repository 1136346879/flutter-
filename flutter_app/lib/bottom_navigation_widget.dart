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
import 'package:flutter_app/test/tabbarDemo.dart';
/**
 * 主页
 */
//class name extends StatefulWidget{
//  @override
//  State<StatefulWidget> createState() {
//   return _nameState();
//  }
//
//}
//
//class _nameState  extends State<name> {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: child,
//    );
//  }
//
//
//
//}

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationWidgetState();
  }
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _tabIndex = 0;
  final _BottomNavigationWidgetColor = Colors.blue;
  List<Widget> list = new List();

  @override
  void initState() {
    super.initState();
    list
      ..add(HomeScreen())
      // ..add(TabBarDemo())
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
                icon: Icon(Icons.home, color: _BottomNavigationWidgetColor),
                title: Text('home',
                    style: TextStyle(color: _BottomNavigationWidgetColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: _BottomNavigationWidgetColor,
                ),
                title: Text('Email',
                    style: TextStyle(color: _BottomNavigationWidgetColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: _BottomNavigationWidgetColor,
                ),
                title: Text('Pages',
                    style: TextStyle(color: _BottomNavigationWidgetColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: _BottomNavigationWidgetColor,
                ),
                title: Text('AipPlay',
                    style: TextStyle(color: _BottomNavigationWidgetColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.shopping_cart,
                  color: _BottomNavigationWidgetColor,
                ),
                title: Text('购物车',
                    style: TextStyle(color: _BottomNavigationWidgetColor))),
                       BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person,
                  color: _BottomNavigationWidgetColor,
                ),
                title: Text('我的',
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
            ToastShow().showShortToast('我要发布');
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
              return every_page(key);
            }));
          },
          title: Text('我要发布'),
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
