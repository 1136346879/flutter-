import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/model/topic.dart';

class IdeaHeader extends StatefulWidget {
  final List<Topic>? topics;
  const IdeaHeader({Key? key, this.topics}) : super(key: key);

  @override
  _IdeaHeaderState createState() {
    return _IdeaHeaderState();
  }
}

class _IdeaHeaderState extends State<IdeaHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 0),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "想法",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            IdeaBanner(widget.topics!),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: FindCard(
                      icon: Icon(
                        Icons.business,
                        color: Colors.redAccent,
                      ),
                      title: "热门更新了",
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: FindCard(
                      icon: Icon(
                        Icons.face,
                        color: Colors.blue,
                      ),
                      title: "发现知友",
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class IdeaBanner extends StatelessWidget {
  final List<Topic>? topicInfos;

  IdeaBanner(this.topicInfos);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (topicInfos!.length == 0) {
      return SizedBox();
    }

    return Container(
//      color: Colors.white,
      child: CarouselSlider(
        items: topicInfos!.map((info) {
          return Builder(
            builder: (BuildContext context) {
              return Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                       info.imageurl!,width: 200,height: 68,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        width: 199,
                        child: Text(
                          "正在讨论",
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      Container(
                        width: 199,
                        child: Text(
                          info.title!,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 199,
                        child: Text(
                          info.content!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ],
              );
            },
          );
        }).toList(),
        aspectRatio: 5,
//        interval: const Duration(seconds: 2),
        autoPlay: true,
//        distortion: false,
      ),
    );
  }
}

class FindCard extends StatelessWidget {
  final String? title;
  final Widget? icon;

  const FindCard({Key? key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon!,
            SizedBox(
              width: 10.0,
            ),
            Text(
              title!,
            )
          ],
        ),
      ),
    );
  }
}
