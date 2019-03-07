import 'package:flutter/material.dart';

class emile_screen extends StatefulWidget {
  @override
  _state_emile_screen createState() {
    return _state_emile_screen();
  }
}

class  _state_emile_screen extends State<emile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('emile_screen'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Text('emile_screen'),
        ));
  }
  
}