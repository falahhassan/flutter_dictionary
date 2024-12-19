import 'package:flutter/material.dart';

class AppNotify with ChangeNotifier {
  String name = "";

  void setname() {
    name;
    notifyListeners();
  }
}
