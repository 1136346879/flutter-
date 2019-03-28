import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TabBarDemoState();
  }
}

class TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        backgroundColor: Color(0xffd43d3d),
      ),
      body: ListView(
        children: <Widget>[
          Text("banner"),
          TabBar(
            tabs: <Widget>[
              Tab(
                text: "07",
                icon: Icon(Icons.directions_bike),
              ),
              Tab(
                 text: "09",
                icon: Icon(Icons.directions_boat),
              ),
              Tab(
                 text: "08",
                icon: Icon(Icons.directions_bus),
              ),
            ],
            controller: _tabController,
          ),
          TabBarView(
            controller: _tabController,
            children: <Widget>[
              Center(child: Text('自行车')),
              Center(child: Text('船')),
              Center(child: Text('巴士')),
            ],
          ),
        ],
      ),
    );
  }
}
