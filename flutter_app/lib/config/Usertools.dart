import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../ToastShow.dart';
import 'const_config.dart';

/**
 * 用户信息管理类
 */
class UserTools {
  static UserTools? _userToolsInstance;
  static SharedPreferences? _sharedPreferences;

  static Future<UserTools> get instance async {
    return await getInstance();
  }

  static Future<UserTools> getInstance() async {
    if (_userToolsInstance == null) {
      _userToolsInstance = UserTools();
      await _userToolsInstance!.init();
    }
    return _userToolsInstance!;
  }
//初始化 SharedPreferences
  Future init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }
//判断是都初始化
  static bool _beforeChecked() {
    if (_sharedPreferences == null) {
     ToastShow().showShortToast("plase go to init SharedPreferences!!! ");
      return true;
    }
    return false;
  }
//存储用户数据
  Future<bool>? setUserData(Map<String, dynamic> user) {
    if (_beforeChecked()) return null;
    var jsonUser = json.encode(user);
    return _sharedPreferences!.setString(ConstConfig.CURRENT_USERDATA, jsonUser);
  }
//获取用户数据
  dynamic getUserData() {
    var mapString = _sharedPreferences!.getString(ConstConfig.CURRENT_USERDATA);
    if (mapString != null) {
      ToastShow().showShortToast("用户数据为： $mapString");
      var map = json.encode(mapString);
      return map;
    }
    return null;
  }

 // 删除数据
 Future<bool> delectUserData() {
  return _sharedPreferences!.setString(ConstConfig.CURRENT_USERDATA, '');
 }
}
