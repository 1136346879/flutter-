import 'package:flutter/material.dart';
import 'package:flutter_app/ToastShow.dart' as ToastUtil;
import 'package:flutter_app/demoscrollview/nestedscrollview/index.dart';
import 'package:flutter_app/utils/app_navigator.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LogoAppState();
  }
}
final loginButton = FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("listview下拉刷新和加载更多");
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('listview下拉刷新和加载更多', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
    
    final loginButton1 = FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("底部toast提示");
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('toast提示', style: TextStyle(color: Colors.blue, fontSize: 14.0))
    );
    final loginButton2 = FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("底部菜单栏展示");
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('底部菜单栏展示', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
    final loginButton3 = FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("banner轮播图展示");
              
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('banner轮播图展示', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
    final loginButton4 = FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("网络图片及本地图片加载");
              
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('网络图片及本地图片加载', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
    final loginButton5 = FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("tabbarview切换联动页面切换");
              
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('tabbarview切换联动页面切换', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
    final loginButton6 = FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("gridview展示");
              
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('gridview展示', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
    final loginButton7 = FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("网络访问接口解析及数据展示");
              
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('网络访问接口解析及数据展示', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
    final loginButton8 = FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("页面之间跳转，带参数和不带参数");
              
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('页面之间跳转，带参数和不带参数', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
    // final loginButton9 = FlatButton.icon(
    // onPressed: () {
    //           ToastUtil.ToastShow().showTopToast("图片展示");
              
    // },
    // icon: Icon(
    //   Icons.edit,
    //   color: Colors.blue,
    // ),
    // label: Text('网络图片展示', style: TextStyle(color: Colors.blue, fontSize: 14.0)));

final loginButton0 = FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("listview和gridview滑动事件冲突解决");
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('listview和gridview滑动事件冲突解决', style: TextStyle(color: Colors.blue, fontSize: 14.0)));

Widget barSearch(BuildContext context) {
  return new Row(
    children: <Widget>[
      Expanded(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: new FlatButton.icon(
            color: Colors.black12,
            onPressed: () {
              ToastUtil.ToastShow().showBottomToast("去搜索页面");
            },
            icon: new Icon(
              Icons.search,
              size: 18.0,
              color: Colors.grey,
            ),
            label: new Text('搜索',
                style: TextStyle(color: Colors.green, fontSize: 16.0)),
          ),
        ),
      ),
      loginButton
    ],
  );


 
}

class LogoAppState extends State<HomeScreen> {
  var _visible = true;
 
  @override
  Widget build(BuildContext context) {
 
    //通过Opacity的透明度值来控制 widget显示和隐藏 这比在树中删除和添加widget效率更高
    return Scaffold(
        appBar: AppBar(
          title: barSearch(context),
          // centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Center(
            // child: Column(
                 child: ListView(
          children: <Widget>[
              loginButton1,
              loginButton2,
              loginButton3,
              loginButton4,
              loginButton5,
              loginButton6,
              loginButton7,
              loginButton8,
              // loginButton9,
              loginButton0,
              flatButton(context)
            // Text('首页',),
            // new Opacity(
            //     opacity: _visible ? 1.0 : 0.0,
            //     child: new Center(
            //       child: new GestureDetector(
            //         onTap: () {
            //             // Navigator.push(context,
            //   // MaterialPageRoute(builder: (BuildContext ctx) {
            //     // return new Index();} ));
            //           //每次点击文本就在隐藏和显示之间切换
            //           _visible = _visible ? false : true;
            //           setState(() {});
            //         },
            //         child: new Text(
            //           'home，当你点击我的时候 你会失去我',
            //           textDirection: TextDirection.ltr,
            //           style: const TextStyle(
            //               fontWeight: FontWeight.w900,
            //               fontStyle: FontStyle.italic),
            //         ),
            //       ),
            //     ))
          ],
                 )
        // )
        ));

         
  }

  FlatButton flatButton(BuildContext context) {
    return FlatButton.icon(
  onPressed: () {
            ToastUtil.ToastShow().showTopToast("webview加载");
               AppNavigator.pushWeb(context, 'https://github.com/1136346879/flutter-', 'Github');
  },
  icon: Icon(
    Icons.edit,
    color: Colors.blue,
  ),
  label: Text('webview加载', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
  }

}
