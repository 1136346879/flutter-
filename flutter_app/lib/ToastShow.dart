import 'package:flutter/material.dart';
//导入toast插件
import 'package:fluttertoast/fluttertoast.dart';

class ToastShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return null;
  }
   showLongToast(String showString) {
    Fluttertoast.showToast(
      msg: showString,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      fontSize: 16,
      textColor: Colors.white,
      backgroundColor: Colors.blue,
    );
  }
  showBottomToast(String showString) {
    Fluttertoast.showToast(
      msg: showString,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: 1,
      fontSize: 16,
      textColor: Colors.white,
      backgroundColor: Colors.blue,
    );
  }
  showTopToast(String showString) {
    Fluttertoast.showToast(
      msg: showString,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIos: 1,
      fontSize: 16,
      textColor: Colors.white,
      backgroundColor: Colors.blue,
    );
  }
   showShortToast(String showString) {
   return Fluttertoast.showToast(
      msg: showString,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      textColor: Colors.white,
      fontSize: 16,
      backgroundColor: Colors.blue,
    );
  }

  void calcle(){
    Fluttertoast.cancel();
  }

}