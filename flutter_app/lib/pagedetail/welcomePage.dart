import 'package:flutter/material.dart';
import 'package:flutter_app/pagedetail/FourthPage.dart';

/**
 * 欢迎页面  引导页
 */
class welcomePage extends StatefulWidget{

  welcomePage(Key? key) : super(key : key);

  @override
  _widgetWelcome createState() {
    return _widgetWelcome();
  }

}

class _widgetWelcome extends State<welcomePage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: FourthPage(),
    );
  }

}