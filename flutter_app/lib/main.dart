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
        primarySwatch: createMaterialColor(Colors.orange),
      ),
      home: BottomNavigationWidget(), //app  首页框架搭建
    );
  }

  /// 创建MaterialColor
  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

}



