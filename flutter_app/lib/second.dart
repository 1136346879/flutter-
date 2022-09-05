import 'package:flutter/material.dart';
import 'package:flutter_app/first.dart' as first;
import 'package:flutter_app/me/me_page.dart';

class second  extends StatelessWidget{
   second({Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

      child: MaterialApp(
        title: 'nihao',
        theme: ThemeData.dark(),
        home: first.MyHomePage(),
      ),
    );
  }

}