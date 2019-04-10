import 'package:flutter/material.dart';
import 'package:flutter_app/ToastShow.dart' as ToastUtil;
import 'package:flutter_app/demoscrollview/nestedscrollview/index.dart';
import 'package:flutter_app/utils/app_navigator.dart';
import 'package:flutter_app/gridviewpage.dart';
import 'package:flutter_app/shoppingcarpage.dart';

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
              ToastUtil.ToastShow().showTopToast("就是本页面哦");
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('tabbarview切换联动页面切换', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
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
                 // Navigator.push(context,
                //     MaterialPageRoute(builder: (BuildContext ctx) {
                //       return TabBarViewMe(
                //         id: '27110296',
                //         title: '无名之辈',
                //       );
                //     }));
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
              flatButton2(),
              flatButton3(),
              loginButton4,
              loginButton5,
              flatButton6(context),
              loginButton7,
              loginButton8,
              // loginButton9,
              flatButton0(context),
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
  
 FlatButton flatButton6(BuildContext context) {
    return    FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("gridview展示");
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext ctx) {
                      return gridviewpage();
                    }));
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('gridview展示', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
   
  }
 FlatButton flatButton0(BuildContext context) {
    return FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("listview和gridview滑动事件冲突解决");
                 Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext ctx) {
                      return gridviewpage();
                    }));
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('listview和gridview滑动事件冲突解决', style: TextStyle(color: Colors.blue, fontSize: 14.0)));

  }
  FlatButton flatButton(BuildContext context) {
    return FlatButton.icon(
  onPressed: () {
            ToastUtil.ToastShow().showTopToast("webview加载");
               AppNavigator.pushWeb(context, 'https://github.com/1136346879/flutter-', 'Github');
                 this.openEnvSelectMenu();
  },
  icon: Icon(
    Icons.edit,
    color: Colors.blue,
  ),
  label: Text('webview加载', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
  }
 FlatButton flatButton2() {
    return FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("底部菜单栏展示");
                 this.openEnvSelectMenu();

    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('底部菜单栏展示', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
   
  }
 FlatButton flatButton3() {
    return  FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("banner轮播图展示");
              Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext ctx) {
                      return shoppingcarpage();
                    }));
    },
    icon: Icon(
      Icons.edit,
      color: Colors.blue,
    ),
    label: Text('banner轮播图展示', style: TextStyle(color: Colors.blue, fontSize: 14.0)));
   
  }
 /**
   * 环境选择
   */
  void openEnvSelectMenu() async {
    await showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.label_outline),
                title: Text(
                  '中文',
                ),
                onTap: () {
               this.popShort('切换成功',Colors.red[300],25.0,Colors.blue[300]);
                },
              ),
              ListTile(
                leading: Icon(Icons.label_outline),
                title: Text('英文'),
                onTap: () {
              this.popShort('切换成功',Colors.red[300],25.0,Colors.blue[300]);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  /**
 * message: 提示语 成功了
 * textcolor： 文字颜色 Colors.blue
 * fontsize：文字大小 25.0
 * backgroundColor： 背景颜色 Colors.red[300]
 */
  void popShort([message,textColor,fontSize,backgroundColor]) {
    Navigator.pop(context);
    if (message != null) {
      Scaffold.of(context).showSnackBar(new SnackBar(
        duration:const Duration(milliseconds: 1000),
        content: new Text(message,style: TextStyle(color: textColor,fontSize: fontSize)),
        backgroundColor: backgroundColor,
        // animation: ,
        // action: new SnackBarAction(
        // label: '取消',
        //     onPressed: () {
        //         // do something to undo
        //     }
        //  ),
      ));
    }
  }
}
