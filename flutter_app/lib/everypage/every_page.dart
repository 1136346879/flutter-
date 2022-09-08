import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/intl/ninghao_demo_localizations.dart';
import 'package:flutter_app/everypage/navigator_demo.dart';
import 'package:flutter_app/rxdart/rxdart_demo.dart';
import 'package:flutter_app/everypage/form_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_app/i18n/i18n_demo.dart';
import 'package:flutter_app/animation/animation_demo.dart';
import 'package:flutter_app/bloc/bloc_demo.dart';
import 'package:flutter_app/http/http_demo.dart';
import 'package:flutter_app/stream/stream_demo.dart';
import 'package:flutter_app/state/state_management_demo.dart';
import 'package:flutter_app/everypage/material_components.dart';
import 'package:flutter_app/fivepage/TabBarView.dart';
/// 可以随意切换页面
class every_page extends StatefulWidget{

  every_page(Key? key) : super(key : key);
  @override
  every_pageState createState() {
    return every_pageState();
  }

}


class every_pageState extends State<every_page>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: Locale('en', 'US'),
        // locale: Locale('zh', 'CN'),
        // localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
        //   return Locale('en', 'US');
        // },
        localizationsDelegates: [
          NinghaoDemoLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
        ],
        debugShowCheckedModeBanner: false,
//       home: NavigatorDemo(),
        initialRoute: '/mdc',
        routes: {
          '/': (context) => HttpDemo(),
          //  '/': (context) => TabBarViewMe(),
//          '/about': (context) => Page(title: 'About'),
          '/form': (context) => FormDemo(),
          '/mdc': (context) => MaterialComponents(),
//          '/state-management': (context) => StateManagementDemo(),
          '/stream': (context) => StreamDemo(),
//          '/rxdart': (context) => RxDartDemo(),
//          '/bloc': (context) => BlocDemo(),
          '/http': (context) => HttpDemo(),
          '/animation': (context) => AnimationDemo(),
//          '/i18n': (context) => I18nDemo(),
//          '/test': (context) => TestDemo(),
        },
//        theme: ThemeData(
//          primarySwatch: Colors.yellow,
//          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
//          splashColor: Colors.white70,
//          accentColor:  Color.fromRGBO(3, 54, 255, 1.0),
//        )
      title: 'widget_common',
      theme: ThemeData.dark(),
    );
  }

}