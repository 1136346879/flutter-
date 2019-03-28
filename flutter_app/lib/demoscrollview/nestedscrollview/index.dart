import 'package:flutter/material.dart';
import 'package:flutter_app/components/widgetComp.dart' as WidgetComp;
import 'demo.dart' as Demo;

class Index extends StatefulWidget {
  static String title = 'NestedScrollView';
  static String mdUrl = 'docs/widget/scrollview/nestedscrollview/index.md';
  static String originCodeUrl = 'https://docs.flutter.io/flutter/widgets/Scrollbar-class.html';

  @override
  _IndexState createState() => new _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return WidgetComp.Index(
        title: Index.title,
        originCodeUrl: Index.originCodeUrl,
        mdUrl: Index.mdUrl,
        demoChild: [
          Demo.Index(),
        ]
    );
  }
}
