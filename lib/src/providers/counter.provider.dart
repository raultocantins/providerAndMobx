import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int counter = 0;

  increment() {
    counter = counter + 1;
    notifyListeners();
  }

  decrement() {
    if (counter > 0) {
      counter = counter - 1;
    }
    notifyListeners();
  }
}
