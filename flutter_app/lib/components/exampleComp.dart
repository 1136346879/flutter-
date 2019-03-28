import 'package:flutter/material.dart';
import 'package:flutter_app/store/models/main_state_model.dart'
    show MainStateModel;
import 'package:flutter_app/store/index.dart' show Store;
import 'package:flutter_app/config/theme.dart' show AppTheme;

class Index extends StatelessWidget {
  final Widget child;

  Index({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _dp = 1.5;
    return Store.connect(
      builder: (context, child, MainStateModel model) {
        return Center(
          child: Container(
            width: size.width,
            height: size.height / _dp,
            margin: EdgeInsets.all(30 / _dp),
            decoration: BoxDecoration(
              border: Border.all(color: Color(AppTheme.mainColor), width: 1.0),
            ),
            child: this.child,
          ),
        );
      },
    );
  }
}
