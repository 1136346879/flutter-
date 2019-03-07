# flutter-
flutter基础组件使用及插件引入


flutter run  运行项目  所遇到的问题总结
flutter packages get    import 'package:flutter/material.dart';爆红

listview中嵌套GridView，  当触摸到gridview时，滑动事件被拦截，导致页面不可滑动问题处理：   给GridView添加属性   primary:false, 拦截其滑动事件


flutter sdk 升级后遇到的问题：  Scaffold组件是否加padding的问题 报错
1.0 版本的 caffold组件是不需要加padding
升级之后  caffold组件必须加上padding，项目才能不报错，
但是升级之后，遇到一个问题： 而我引入的webview插件不能兼容，插件的Scaffold组件没有升级呢，没有padding
所以我这边又换回去了flutter Sdk 1.0版本
