import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_app/pagedetail/page_dragger.dart';

class FourthPage extends StatefulWidget{

  @override
  FourthPageStatus createState() {
    return FourthPageStatus();
  }
//  FourthPage (Key key) : super(key: key);
}

class FourthPageStatus extends State<FourthPage> with TickerProviderStateMixin{
  StreamController<SlideUpdate> slideUpdateStream;
  FourthPageStatus(){

     slideUpdateStream = StreamController<SlideUpdate>();
     slideUpdateStream.stream.listen((SlideUpdate event){
       if(mounted){
         setState(() {





         });
       }
     });


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text('欢迎页面'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            Text('你好，欢迎页面。')
          ],
        ),
      ),

    );
  }
}
