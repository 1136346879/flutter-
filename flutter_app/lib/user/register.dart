import 'package:flutter/material.dart';
import 'package:leancloud_storage/leancloud.dart';

import '../ToastShow.dart';
import 'login.dart';

/**
 *  注册页面
 */
class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册页面'),
        elevation: 0.0,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  RegisterFormState createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  void submitRegisterForm() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('username: $username');
      debugPrint('password: $password');
      var userInfo = _register();
      userInfo.then((LCUser) {
        if (LCUser != null) {
          ToastShow().showShortToast('${LCUser.username}--注册： sucess，请去登录');
          Navigator.pop(context);//关闭上个页面
          Navigator.push(
              context,
              MaterialPageRoute(
                // num传给下一级
                builder: (context) => Login(usernameLogin:username,passwordLogin:password),
              ));
        }
      });
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Registering...'),
      ));
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  Future<LCUser> _register() async {
    // 创建实例
    LCUser user = LCUser();
    // 等同于 user['username'] = 'Tom';
    user.username = '$username';
    user.password = '$password';
// 可选
//    user.email = '1136346879@qq.com';
//    user.mobile = '+8615201449190';
// 设置其他属性的方法跟 LCObject 一样
    user['gender'] = 'secret';
    return await user.signUp();
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return 'Username is required.';
    }
    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty || value.toString().length < 6) {
      return '密码不能少于6位';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '请输入用户名',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validateUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            //隐藏文字
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '请输入密码',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatePassword,
            //提示
            autovalidate: autovalidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register', style: TextStyle(color: Colors.white)),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          ),
        ],
      ),
    );
  }
}

//class TextFieldDemo extends StatefulWidget {
//  @override
//  TextFieldDemoState createState() => TextFieldDemoState();
//}
//
//class TextFieldDemoState extends State<TextFieldDemo> {
//  final textEditingController = TextEditingController();
//
//  @override
//  void dispose() {
//    textEditingController.dispose();
//    super.dispose();
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    // textEditingController.text = 'hi';
//    textEditingController.addListener(
//      () {
//        debugPrint('input: ${textEditingController.text}');
//      }
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return TextField(
//      controller: textEditingController,
//      // onChanged: (value) {
//      //   debugPrint('input: $value');
//      // },
//      onSubmitted: (value) {
//        debugPrint('submit: $value');
//      },
//      decoration: InputDecoration(
//        icon: Icon(Icons.subject),
//        labelText: 'Title',
//        hintText: 'Enter the post title.',
//        // border: InputBorder.none,
//        // border: OutlineInputBorder(),
//        filled: true,
//      ),
//    );
//  }
//}
//
//class ThemeDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: Theme.of(context).accentColor,
//    );
//  }
//}
