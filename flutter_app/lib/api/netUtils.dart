
import 'dart:async';
import '../data/base.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'httpUtil.dart';

Future<BaseResponse> get(String url, {Map<String, dynamic>? params}) =>
    _get(url, params: params);//.delay(Duration(milliseconds: 500)).asBroadcastStream();

Future<BaseResponse> _get(String url, {Map<String, dynamic>? params}) async {
  var response = await HttpUtil().dio!.get(url, queryParameters: params);
  var res = BaseResponse.fromJson(response.data);
  if (res.success == false) {
    Fluttertoast.showToast(
        msg: res.message!
    );
  }
  return Future.value(res);
}


Future<BaseResponse> post(String url,{dynamic body,Map<String, dynamic>? queryParameters}) =>
    _post(url, body,queryParameters: queryParameters);//.delay(Duration(milliseconds: 500)).asBroadcastStream()

Future<BaseResponse> _post(String url, dynamic body,{ Map<String, dynamic>? queryParameters}) async {
  var response = await HttpUtil().dio!.post(url, data: body, queryParameters: queryParameters);
  print("flutter----：  "+response.toString());
  var res = BaseResponse.fromJson(response.data);
  if (res.success == false) {
    Fluttertoast.showToast(
        msg: res.message!,
        gravity: ToastGravity.CENTER
    );
  }
  return Future.value(res);
}
