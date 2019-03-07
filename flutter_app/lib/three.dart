import 'package:flutter/material.dart';
import 'package:flutter_app/first.dart' as first;


class three extends StatelessWidget{
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