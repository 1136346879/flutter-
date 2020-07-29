import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/ToastShow.dart' as ToastUtil;
import 'package:flutter_app/demoscrollview/nestedscrollview/index.dart';
import 'package:flutter_app/utils/app_navigator.dart';
import 'package:flutter_app/gridviewpage.dart';
import 'package:flutter_app/shoppingcarpage.dart';
import 'package:flutter_app/banner/pagination.dart';
import 'package:flutter_app/banner/commont_banner.dart';
import 'package:x5_webview/x5_sdk.dart';

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
  final List<dynamic> arr = [
    {'image': 'https://img.alicdn.com/tfs/TB1W4hMAwHqK1RjSZJnXXbNLpXa-519-260.jpg', 'type': 0, 'id': 9695909, 'url': 'https://www.zhihu.com/question/294145797/answer/551162834', 'title': '为什么阿里巴巴、腾讯和 Google 之类的企业都在使用 Flutter 开发 App？'},
    {'image': 'https://img.alicdn.com/tfs/TB1XmFIApzqK1RjSZSgXXcpAVXa-720-338.jpg', 'type': 0, 'id': 9695859, 'url': 'https://zhuanlan.zhihu.com/p/51696594', 'title': 'Flutter 1.0 正式发布: Google 的便携 UI 工具包'},
    {'image': 'https://img.alicdn.com/tfs/TB1mClCABLoK1RjSZFuXXXn0XXa-600-362.jpg', 'type': 0, 'id': 96956491409, 'url':'https://zhuanlan.zhihu.com/p/53497167','title': 'Flutter 示范应用现已开源 — 万物起源(The History of Everything)'},
    {'image': 'https://img.alicdn.com/tfs/TB1fXxIAAvoK1RjSZFNXXcxMVXa-600-362.jpg', 'type': 0, 'id': 9695816, 'url': 'https://mp.weixin.qq.com/s?__biz=MzAwODY4OTk2Mg==&mid=2652048101&idx=1&sn=20296088e4bd8ca33c5c9991167d9f7d&chksm=808caaa0b7fb23b65c0e5806209f8d86da6732f3a00a70353f3606018339518b0a8656f14dc5&mpsshare=1&scene=2&srcid=0106SZapVysZdIS6Oc5AhNH6&from=timeline&ascene=2&devicetype=android-27&version=27000038&nettype=WIFI&abtest_cookie=BQABAAgACgALABMAFAAFAJ2GHgAjlx4AV5keAJuZHgCcmR4AAAA%3D&lang=zh_CN&pass_ticket=4K1%2FUpsxP4suPj2iubR17wbAP7r9LW9iYrPAC2dppTqv7j7JO5FWMXtcKeBRxueV&wx_header=1', 'title': 'Flutter 与 Material Design 双剑合璧，助您构建精美应用'}
  ];
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
            Pagination(),//轮播图 banner
            CommontBanner(swiperDataList:arr),
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
//    _initX5Webview();
            ToastUtil.ToastShow().showTopToast("webview加载");
//               AppNavigator.pushWeb(context, 'https://github.com/1136346879/flutter-', 'Github');
               AppNavigator.pushWeb(context, 'ko/index.html', 'Github');
//               AppNavigator.pushWeb(context, 'ko/private_policy.html', 'Github');
//                 this.openEnvSelectMenu();
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

  void _initX5Webview() async{
    var isOk = false;
    if(!isOk){
      isOk= await X5Sdk.init();
    }
    var fileS = await rootBundle.loadString("ko/index.html");
    var url = Uri.dataFromString(fileS,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8'),
    )
        .toString();
    X5Sdk.openWebActivity(url, title: "本地html示例");
  }
}
