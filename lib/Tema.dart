import 'package:flutter/cupertino.dart';

class Tema extends ChangeNotifier {
  static Tema instance = Tema();
  bool isThemeDark = false;
  changeTheme() {
    isThemeDark = !isThemeDark;
    notifyListeners();
  }
}
