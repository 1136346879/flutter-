import 'package:flutter/material.dart';
import 'package:flutter_app/ToastShow.dart' as ToastUtil;

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LogoAppState();
  }
}

final loginButton = FlatButton.icon(
    onPressed: () {
              ToastUtil.ToastShow().showTopToast("您想提问吗");
    },
    icon: Icon(
      Icons.edit,
      size: 20.0,
      color: Colors.blue,
    ),
    label: Text('提问', style: TextStyle(color: Colors.blue, fontSize: 18.0)));

Widget barSearch() {
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
          title: barSearch(),
          // centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Text('首页'),
            new Opacity(
                opacity: _visible ? 1.0 : 0.0,
                child: new Center(
                  child: new GestureDetector(
                    onTap: () {
                      //每次点击文本就在隐藏和显示之间切换
                      _visible = _visible ? false : true;
                      setState(() {});
                    },
                    child: new Text(
                      'home，当你点击我的时候 你会失去我',
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ))
          ],
        )));
  }
}
