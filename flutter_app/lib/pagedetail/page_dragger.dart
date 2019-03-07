import 'package:flutter/material.dart';

class pageDragger extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}

class SlideUpdate{
  final updateType;
  final direction;
  final slidePercent;
  SlideUpdate(
      this.updateType,
      this.direction,
      this.slidePercent
      );
}