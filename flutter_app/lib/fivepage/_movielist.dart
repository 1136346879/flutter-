import 'package:flutter/material.dart';



class Movielist extends StatefulWidget {
  final mlist;
  final headView;

const Movielist([this.mlist,this.headView]):super();

      @override
  statesListMovie createState() {
    return statesListMovie();
  }
}

class statesListMovie extends State<Movielist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.mlist.length,
      itemBuilder: (BuildContext ctx,int index){
 // 每次循环，都拿到当前的电影Item项
      var mItem = widget.mlist[index];
          if (index == 0 && index != mItem.length) {
            if(widget.headView is Function){
              return widget.headView();
            }else {
              return Container(height: 0);
            }
          }
            if (index == mItem.length) {
            //return _buildLoadText();
            // return _buildProgressIndicator();
          } else {
            //print('itemsitemsitemsitems:${items[index].title}');
            //return ListTile(title: Text("Index${index}:${items[index].title}"));
            // if (widget.renderItem is Function) {
            //   return widget.renderItem(index, items[index]);
            // }
     
      return GestureDetector(
        onLongPress: (){  // 跳转到详情
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (BuildContext ctx) {
          //       return new MovieDetail(
          //         id: mItem['id'],
          //         title: mItem['title'],
          //       );
          //     }));

        },
        onTap: () {
          // 跳转到详情
          // Navigator.push(context,
          //   MaterialPageRoute(builder: (BuildContext ctx) {
          //       return new MovieDetail(
          //         id: mItem['id'],
          //         title: mItem['title'],
          //       );
          //     }));
            },
              //item  最外层  容器
              child: Container(
              height: 200,
                //类似于shape
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(top: BorderSide(color: Colors.black12))),
                //开始布局  row   Column
                //横向排列
                child: Row(
                  children: <Widget>[
                    Image.network(mItem['images']['small'],
                        width: 130, height: 180, fit: BoxFit.cover),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 200,
                      //竖直排列
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('电影名称：${mItem['title']}'),
                          Text('上映年份：${mItem['year']}年'),
                          Text('电影类型：${mItem['genres'].join('，')}'),
                          Text('豆瓣评分：${mItem['rating']['average']}分'),
                          Text('主要演员：${mItem['title']}')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }
    });

  }
}