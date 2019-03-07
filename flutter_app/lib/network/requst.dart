import 'dart:io';
import 'package:dio/dio.dart';

import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Request {
  static const String baseUrl = 'http://www.shuqi.com/';

  static Future<dynamic> get({String action, Map params}) async {
    return Request.mock(action: action, params: params);

//     var dio = Request.createDio();
//     Response<Map> response = await dio.get(action, data: params);
//     var data = response.data['data'];
//     print(data);
//
//     return data;
  }

  static Future<dynamic> post({String action, Map params}) async {
    return Request.mock(action: action, params: params);

    // var dio = Request.createDio();
    // Response<Map> response = await dio.post(action, data: params);
    // var data = response.data['data'];
    // print(data);

    // return data;
  }

  static Future<dynamic> mock({String action, Map params}) async {
    var responseStr = await rootBundle.loadString('mock/$action.json');
    var responseJson = json.decode(responseStr);
    return responseJson['data'];
  }

  static Dio createDio() {
    var options = Options(
      baseUrl: baseUrl,
      connectTimeout: 10000,
      receiveTimeout: 100000,
      contentType: ContentType.json,
    );
    return Dio(options);
  }
}