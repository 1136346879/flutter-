import 'package:flutter/material.dart';
import 'package:flutter_app/component/cell/me_cell.dart';
import 'package:flutter_app/me/setting_page.dart';
import 'package:flutter_app/me/me_header.dart';
import 'package:flutter_app/utils/app_navigator.dart';
import 'package:path/path.dart';

class MePage extends StatelessWidget {

  Widget buildItems(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
         primary:false,
        children: <Widget>[
          MeCell(
            title: '大学生活',
            icon: Icons.school,
            onPressed: () {},
          ),
          MeCell(
            title: '包包',
            icon: Icons.shopping_basket,
            onPressed: () {
              
            },
          ),
          MeCell(
            title: '购物车',
            icon: Icons.add_shopping_cart,
            onPressed: () {},
          ),
          MeCell(
            title: '小说',
            icon: Icons.book,
            onPressed: () {},
          ),
          MeCell(
            title: '书架',
            icon: Icons.collections_bookmark,
            onPressed: () {},
          ),
          MeCell(
            title: 'download',
            icon: Icons.file_download,
            onPressed: () {
            },
          ),
          MeCell(
            title: '货币',
            icon: Icons.monetization_on,
            onPressed: () {
            },
          ),
          MeCell(
            title: 'sport',
            icon: Icons.accessibility,
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }

  Widget buildItems2(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 5,
        shrinkWrap: true,
        primary:false,
        children: <Widget>[
          MeCell(
            title: '图片',
            icon: Icons.add_photo_alternate,
            onPressed: () {},
          ),
          MeCell(
            title: '更多',
            icon: Icons.more,
            onPressed: () {},
          ),
          MeCell(
            title: '设置',
            icon: Icons.confirmation_number,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SettingPage();
              }));
            },
          ),
          MeCell(
            title: 'GitHb',
      
            icon: Icons.person,
            onPressed: () {
              AppNavigator.pushWeb(
                 context, 'https://github.com/1136346879/flutter-', 'Github');
                  // context, 'https://github.com/Meandni', 'Github');
                    // context, 'http://t.pae.baidu.com/s?s=bai-los3tl', 'Github');
            },
          ),
          MeCell(
                    title: '电影',
                    icon: Icons.video_label,
                    onPressed: () {
                      AppNavigator.pushWeb(
                            context, 'http://t.pae.baidu.com/s?s=bai-los3tl', 'Github');
                    },
          )
        ],
      ),
    );
  }

  Widget barSearch() {
    return new Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: new FlatButton.icon(
              color: Colors.black12,
              onPressed: () {},
              icon: new Icon(
                Icons.search,
                size: 18.0,
                color: Colors.grey,
              ),
              label: new Text(
                "搜索你喜欢的内容",
                style: new TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.crop_free,
            color: Colors.grey,
            size: 32.0,
          ),
        )
      ],
    );
  }

  Widget videoCard(BuildContext context) {
    return new Container(
        color: Colors.white,
        margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
        padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
        child: new Column(
          children: <Widget>[
            new Container(
                margin: const EdgeInsets.only(left: 16.0, bottom: 20.0),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new CircleAvatar(
                        radius: 16.0,
                        child: new Icon(Icons.videocam, color: Colors.white),
                        backgroundColor: Colors.green,
                      ),
                    ),
                    new Expanded(
                      child: new Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        child: new Text("随手拍", style: new TextStyle(fontSize: 16.0),),
                      ),
                    ),
                    new Container(
                      child: new FlatButton(
                          onPressed: (){},
                          child: Row(
                            children: <Widget>[
                              new Text("gogogo->", style: new TextStyle(color: Colors.grey),),
                              Icon(Icons.arrow_forward_ios, color: Colors.grey,size: 16.0,)
                            ],
                          )
                      ),
                    )
                  ],
                )
            ),
            new Container(
              margin: const EdgeInsets.only(left: 16.0),
              child: new SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: new Row(
                  children: <Widget>[
                    new Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        margin: const EdgeInsets.only(right: 6.0),
                        child: new AspectRatio(
                            aspectRatio: 4.0 / 2.0,
                            child: new Container(
                              foregroundDecoration:new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new NetworkImage("https://pic4.zhimg.com/80/v2-8f96f7ada3e63908709b5be10e674dc0_400x224.jpg"),
                                    centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                  ),
                                  borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                              ),
                            )
                        )
                    ),
                    new Container(
                        margin: const EdgeInsets.only(right: 6.0),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: new AspectRatio(
                            aspectRatio: 4.0 / 2.0,
                            child: new Container(
                              foregroundDecoration:new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new NetworkImage("https://pic4.zhimg.com/50/v2-5b0249fa20a164cc398accdf6d35d192_400x224.jpg"),
                                    centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                  ),
                                  borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                              ),
                            )
                        )
                    ),
                    new Container(
                        margin: const EdgeInsets.only(right: 6.0),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: new AspectRatio(
                            aspectRatio: 4.0 / 2.0,
                            child: new Container(
                              foregroundDecoration:new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new NetworkImage("https://pic3.zhimg.com/50/v2-1a6124605fa761a6c20da9f83a10530b_400x224.jpg"),
                                    // centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                  ),
                                  borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                              ),
                            )
                        )
                    ),
                    new Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: new AspectRatio(
                            aspectRatio: 4.0 / 2.0,
                            child: new Container(
                              foregroundDecoration:new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new NetworkImage("https://pic4.zhimg.com/50/v2-c890cea29ebc2a0ed32e27796f1f4895_400x224.jpg"),
                                    // centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                    // fit: BoxFit.fill
                                  ),
                                  borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                              ),
                            )
                        )
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: barSearch(),
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            MeHeader(),
            SizedBox(height: 12),
            buildItems(context),
            SizedBox(height: 12),
            buildItems2(context),
            videoCard(context)
          ],
        ),
      ),
    );
  }
}
