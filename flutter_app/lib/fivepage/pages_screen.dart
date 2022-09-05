import 'package:flutter/material.dart';
import 'package:flutter_app/picturePage/listview_demo.dart';
import 'package:flutter_app/drawer_demo.dart';
import 'package:flutter_app/basic_demo.dart';
import 'package:flutter_app/sliver_demo.dart';
import 'package:flutter_app/layout_demo.dart';
import 'package:flutter_app/ToastShow.dart';
import 'package:flutter_app/demo/myhome_list.dart';
class pages_screen extends StatefulWidget{
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text('pages_screen'),
//          backgroundColor: Colors.amber,
//        ),
//        body: Center(
//          child: Text('pages_screen'),
//        ));
//  }

  @override
  imagePageState createState() {
    return imagePageState();
  }
}
class imagePageState extends State<pages_screen>{
  TabController? mController;
  @override
  void initState() {
    super.initState();
//    mController = TabController(
//      length: 4,
//      vsync: this,
//    );
  }
@override
  void dispose() {
    super.dispose();
//    mController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[10],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('flutter_bar_listview'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () { debugPrint('Search button is pressed.');
              ToastShow().showLongToast("Search button is pressed.");
              }
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
//            controller: mController,
            labelColor: Colors.amber,
            isScrollable: true,
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(text: 'refreshAndMore',icon: Icon(Icons.list)),
              Tab(text: 'listView',icon: Icon(Icons.list)),

              Tab(text: 'ContainerBoxDecoration',icon: Icon(Icons.add_box)),

              Tab(text: 'LayoutDemo',icon: Icon(Icons.adjust)),

              Tab(text: 'pictureList',icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            MyHomeListView(),
            ListViewDemo(),
            // Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            BasicDemo(),
            // Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            LayoutDemo(),

            SliverDemo(),
          ],
        ),
        // drawer: DrawerDemo(),
//        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }


}




