import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:share/share.dart';

class WebPage extends StatefulWidget {
  final String? url;
  final String? title;

  WebPage({@required this.url, this.title});

  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  void initState() {
    super.initState();
    loadJS('ko/sw.js');
    loadJS('ko/js/game.js');
    loadJS('ko/js/ThirdParty.js');
  }
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: this.widget.url,
        withZoom:  true,
        withJavascript: true,
        allowFileURLs:true,
        withLocalStorage:true,
        ignoreSSLErrors:true,
//      withLocalUrl: true,
      appBar: new AppBar(
        title: new Text(this.widget.title ?? 'Meandni'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Share.share(this.widget.url);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
          )
        ],
      ),
    );
  }
  loadJS(String name) async {
    print("laod js");
    var givenJS = rootBundle.loadString(name);
    return givenJS.then((String js) {
      flutterWebviewPlugin.onStateChanged.listen((viewState) async {
        if (viewState.type == WebViewState.finishLoad) {
          flutterWebviewPlugin.evalJavascript(js);
        }
      });
    });
  }
}
