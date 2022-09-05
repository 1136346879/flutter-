import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;
  int _currentIndex = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _minusCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title??""),
      ),
      body:Center(

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
      child:
//      Container(
//      margin: const EdgeInsets.all(10.0),
//      color: const Color(0xFF00FF00),
//      width: 48.0,
//      height: 48.0,
//    ),
//  Container(
//  constraints: BoxConstraints.expand(
//  height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
//  ),
//  padding: const EdgeInsets.all(8.0),
//  color: Colors.teal.shade700,
//  alignment: Alignment.center,
//  child: Text('Hello World', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white)),
//  foregroundDecoration: BoxDecoration(
//  image: DecorationImage(
//  image: NetworkImage('https://www.example.com/images/frame.png'),
//  centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//  ),
//  ),
//  transform: Matrix4.rotationZ(0.1),
//  )
//        child:
 Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'You have pushed the button this many times: click',
            ),
            Text(
              '多少年。。$_counter。。以后',
              style: Theme
                  .of(context)
                  .textTheme
                  .displayLarge,
            ),
            Text('hello'),
            Text(
              'I like Flutter!',
              style: new TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 24, color: Colors.red),
            )
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.

      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.black,
        heroTag: 'nihao',
        onPressed: _minusCounter,
        tooltip: 'Increments',
        //长按
        child: Icon(Icons.backup),
      ),
    );
  }
//  Center(
//    child: Container(
//      margin: const EdgeInsets.all(10.0),
//      color: const Color(0xFF00FF00),
//      width: 48.0,
//      height: 48.0,
//    ),
//  );


//  Container(
//  constraints: BoxConstraints.expand(
//  height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
//  ),
//  padding: const EdgeInsets.all(8.0),
//  color: Colors.teal.shade700,
//  alignment: Alignment.center,
//  child: Text('Hello World', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white)),
//  foregroundDecoration: BoxDecoration(
//  image: DecorationImage(
//  image: NetworkImage('https://www.example.com/images/frame.png'),
//  centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//  ),
//  ),
//  transform: Matrix4.rotationZ(0.1),
//  );
}