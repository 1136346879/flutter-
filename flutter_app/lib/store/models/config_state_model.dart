import 'dart:convert';
import 'package:flutter_app/config/index.dart' as Config;
import 'package:flutter_app/store/index.dart' show model;
import 'package:flutter_app/utils/loadAsset.dart' show loadAssets;

class ConfigInfo {
  bool isPro = Config.isPro;
  String version = '1.0';
  dynamic env = Config.env;
}

ConfigInfo _appConfigInfo = new ConfigInfo();

class ConfigModel {
  get state => _appConfigInfo;

  dynamic getVersion () async {
    print('version ${model.config.state.env.versionUrl}');
    String _version = await loadAssets(model.config.state.env.versionUrl).then((resp) {
      Map<String, dynamic> res = json.decode(resp);
      return res['version'].toString() ?? '0.1';
    }).catchError((err) {
      print('err $err');
      return '0.0';
    });
    print('_version ${_version}');
    return _version;
  }

  methods(name, payload) async {
    print('payload= $payload');

    switch (name) {
      case 'setEnv':
        _appConfigInfo.isPro = payload;
        break;
      case 'setVersion':
        _appConfigInfo.version = await this.getVersion();
        break;
    }
  }
}
