import 'package:flutter/material.dart';
import 'package:flutter_app/first.dart' as first;
import 'package:flutter_app/me/me_page.dart';

class gridviewpage  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(

      child: MaterialApp(
        title: 'nihao',
        theme: ThemeData.dark(),
        home: MePage(),
      ),
    );
  }

}