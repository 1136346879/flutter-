import 'package:flutter/material.dart';
import 'package:flutter_app/user/login.dart';
import '../ToastShow.dart' as ToastUtils;

class MeHeader extends StatelessWidget {

  Widget info = InfoHeader();
  Widget data = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.all(new Radius.circular(6.0))
    ),
    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
    child: Row(
      children: <Widget>[
        PersonDataItem(itemName: "我的英雄", itemData: "101"),
        PersonDataItem(itemName: "关注", itemData: "1"),
        PersonDataItem(itemName: "我喜欢的", itemData: "21"),
        PersonDataItem(itemName: "最近使用", itemData: "10"),
      ],
    )
  );

  @override
  Widget build(BuildContext context) {
    BuildContext con= context;
    return Column(
      children: <Widget>[
        info,
        data
      ],
    );
  }



}
class InfoHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.all(new Radius.circular(6.0))
      ),
      child: new ElevatedButton(
          onPressed: (){
            ToastUtils.ToastShow().showBottomToast("去登陆");
            _login(context);
          },
          child: Column(
            children: [
              ListTile(
                onTap: (){
                  ToastUtils.ToastShow().showBottomToast("去注册");
                },
                leading: new Container(
                  child: Image.network(
                      "https://pic4.zhimg.com/50/v2-c890cea29ebc2a0ed32e27796f1f4895_400x224.jpg"),
                ),
                title: new Container(
                  margin: const EdgeInsets.only(bottom: 2.0),
                  child: new Text("汪栋邢"),
                ),
                subtitle: new Container(
                  margin: const EdgeInsets.only(top: 2.0),
                  child: new Text("铂金段位"),
                ),
              ),
            ],
          )
      ),
    );
  }
  _login(BuildContext context) async{
//    Navigator.push(context, MaterialPageRoute(builder: (context) {
//      return LoginPage();
//    }));
    var userName= await Navigator.push(context,
        MaterialPageRoute(
          // num传给下一级
          builder: (context) => Login(usernameLogin:"",passwordLogin:""),
        ));
  }
}

class PersonDataItem extends StatelessWidget {

  final String? itemName;
  final String? itemData;

  const PersonDataItem({Key? key, this.itemName, this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: (MediaQuery.of(context).size.width - 6.0) / 4,
      child: new ElevatedButton(
          onPressed: (){},
          child: new Container(
            height: 50.0,
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new Text(itemData!, style: new TextStyle(fontSize: 16.0, color: Colors.black),),
                ),
                new Container(
                  child: new Text(itemName!, style: new TextStyle(fontSize: 12.0, color: Colors.black),),
                )
              ],
            ),
          )
      ),
    );
  }
}
