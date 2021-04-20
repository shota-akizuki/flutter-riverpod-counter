//カウンターのモデル
import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  var _count = 0;
  //getter...値を取り出すためのメソッド
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
