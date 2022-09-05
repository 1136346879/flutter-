
import 'Usertools.dart';

class AppConfig{

  static UserTools? userTools;
//  static AppTools appTools;

  static init() async {
    userTools = await UserTools.getInstance();
//    appTools = await AppTools.getInstance();
  }
}