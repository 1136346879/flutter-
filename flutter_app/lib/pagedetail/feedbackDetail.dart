import 'package:flutter/material.dart';


class feedbackDetail extends StatefulWidget{
  feedbackDetail(Key? key) : super(key: key);

  @override
  _widgetFeedBack createState() {
    return _widgetFeedBack();
  }

}

class _widgetFeedBack extends State<feedbackDetail>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text('反馈页面'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            Text('你好，请填写你的反馈内容。')
          ],
        ),
      ),

    );
  }

}