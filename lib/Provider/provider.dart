import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  List<int> _numbers = [1, 2, 3, 4, 5];
  List<int> get numbers => _numbers;

  void add() {
    int last = _numbers.last;
    _numbers.add(last + 1);
    print(last);
    notifyListeners();
  }
}
