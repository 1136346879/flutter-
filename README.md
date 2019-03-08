# flutter-
flutter基础组件使用及插件引入
		
demo是如何一步一步搭建起来的


最初就是直接新建flutter项目，就会自动建立一个入门项目。（开始项目前，需先学习Dart语言）

flutter项目代码都在lib目录下编写：
			新建包，新建dart类，在dart类中编写

flutter 插件引入： （可以看项目中如何引入的）
			首先在项目更目录下找这个文件： pubspec.yaml
				dependencies:
					  flutter:
						sdk: flutter
					  # The following adds the Cupertino Icons font to your application.
					  # Use with the CupertinoIcons class for iOS style icons.
					  cupertino_icons: ^0.1.2  // 图标引入插件
					  fluttertoast: ^2.1.1  //toast 插件
					  dio: ^1.0.9   // 网络访问插件（post，get等）
					  rxdart: ^0.18.1  
					  scoped_model: ^0.3.0
					  http: ^0.12.0  //http 访问插件
					  english_words: ^3.1.0
					  cached_network_image: ^0.5.1   //  图片展示及缓存 插件
					  carousel_slider: ^1.0.1
					  flutter_webview_plugin: ^0.3.0+2  // webview 插件
					  share: ^0.5.3 
					  flutter_localizations:
							sdk: flutter	
本地文件（图片和json数据）引入：（可以看项目中如何引入的）

			在更目录下创建文件夹，把资源文件放入，然后在 pubspec.yaml  文件下添加引入，代码中就可以访问到了
			flutter:
			  # The following line ensures that the Material Icons font is
			  # included with your application, so that you can use the icons in
			  # the material Icons class.
			  uses-material-design: true
			  assets:
				  - mock/
				  - img/
				  
				  
				  
## 直接看效果图，如有用拿代码去，希望点击一下右上角的start。谢谢。（后期会持续更新，大家一起学习）				  
				  
底部	bottomBatView 可以点击切换页面
		
![image](https://github.com/1136346879/flutter-/blob/master/gifStorage/Bottomtabbar.gif)	

顶部 TopBar view 可以切换页面，滑动（点击）切换  listview 刷新和加载更多

![image](https://github.com/1136346879/flutter-/blob/master/gifStorage/TOpBar_listview_refresh_loadmore.gif)

listview上部加入banner轮播图图组件，
banner可以独立引用

![image](https://github.com/1136346879/flutter-/blob/master/gifStorage/banner_list.gif)

listview嵌套gridview（中部） （解决gridview拦截滑动事件）

![image](https://github.com/1136346879/flutter-/blob/master/gifStorage/listview+gridView.gif)
		
		
		如对您有帮助，欢迎starts 谢谢。
		
		
flutter开发中遇到的		
		问题及如何解决：
		flutter run  运行项目  所遇到的问题总结
		flutter packages get    import 'package:flutter/material.dart';爆红

		listview中嵌套GridView，  当触摸到gridview时，滑动事件被拦截，导致页面不可滑动问题处理：   给GridView添加属性   primary:false, 拦截其滑动事件


		flutter sdk 升级后遇到的问题：  Scaffold组件是否加padding的问题 报错
		1.0 版本的 caffold组件是不需要加padding
		升级之后  caffold组件必须加上padding，项目才能不报错，
		但是升级之后，遇到一个问题： 而我引入的webview插件不能兼容，插件的Scaffold组件没有升级呢，没有padding
		所以我这边又换回去了flutter Sdk 1.0版本
