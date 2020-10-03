import 'package:flutter/material.dart';

class MainPageViewState with ChangeNotifier {
  int _index=0;
  int get getIndexOfMainOageView => _index;
  setIndexMainPageView(int value) {
    _index=value;
    notifyListeners();
  }
}
