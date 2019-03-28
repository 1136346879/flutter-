import 'package:flutter/widgets.dart';
import 'package:fluro/fluro.dart';
//首页
// import 'package:flutter_app/page/home.dart' as HomePage;
// import 'package:flutter_app/widget/index.dart' as WidgetConfig;
import 'handles.dart';
//统计
import 'package:flutter_app/utils/analytics.dart' show analytics;

class FluroRouter {
  static Router router;

  static Router initRouter() {
    FluroRouter.router = Router();
    router.define(
      '/',
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          // return HomePage.Index();
        },
      ),
    );

    router.define('/webview', handler: webviewHandler);

    // 组件
    // WidgetConfig.getAllWidgets().forEach((widgetsItem) {
    //   print('widgetsItem $widgetsItem');
    //   widgetsItem.widgetList.forEach((itemInfo) {
    //     router.define(
    //       widgetsItem.nameSpaces + itemInfo.title,
    //       handler: Handler(
    //           handlerFunc: (BuildContext context, Map<String, List> params) {
    //         print('组件路由params=$params widgetsItem=${itemInfo.title}');
    //         analytics.logEvent(
    //             name: 'component', parameters: {'name': itemInfo.title});
    //         return itemInfo.widget;
    //       }),
    //     );
    //   });
    // });
    return router;
  }
}
