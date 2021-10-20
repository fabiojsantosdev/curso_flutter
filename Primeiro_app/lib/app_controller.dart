import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier{

  static AppController instance = AppController();

  bool isDartheme = false;
  changeTheme(){
    isDartheme = !isDartheme;
    notifyListeners();
  }
}