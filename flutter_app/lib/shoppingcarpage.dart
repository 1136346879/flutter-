import 'package:flutter/material.dart';
import 'package:flutter_app/first.dart' as first;
import 'package:flutter_app/me/me_page.dart';
import 'package:flutter_app/fivepage/shoppingcar.dart';
class shoppingcarpage  extends StatelessWidget{
   shoppingcarpage({Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

      child: MaterialApp(
        title: '00000',
        theme: ThemeData.dark(),
        home: shippingcar(),
      ),
    );
  }
}