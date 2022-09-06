import 'package:flutter/material.dart';
import 'package:flutter_app/first.dart' as lib;
import 'package:flutter_app/bottom_navigation_widget.dart';
import 'package:flutter_app/demoscrollview/nestedscrollview/index.dart';
import 'package:leancloud_storage/leancloud.dart';

/**
 * App主入口
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LeanCloud.initialize('i1fg7nB7HgnUo4OBTRdyH9N4-gzGzoHsz', 'ad1JbwGahamdN8WkRBUURls4',
        server: 'https://i1fg7nb7.lc-cn-n1-shared.com',
        queryCache: new LCQueryCache());
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: BottomNavigationWidget(), //app  首页框架搭建
    );
  }
}

