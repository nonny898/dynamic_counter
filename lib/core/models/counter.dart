import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  List<int> counterList = <int>[];

  int get total =>
      counterList.fold(0, (previousValue, element) => previousValue + element);

  /// Add a new counter to the list
  void addCounter() {
    counterList.add(0);
    notifyListeners();
  }

  /// Increment the counter at the given index
  void incrementCounter(int index) {
    print(index);
    counterList[index]++;
    notifyListeners();
  }

  /// Decrement the counter at the given index
  void decrementCounter(int index) {
    if (counterList[index] > 0) {
      counterList[index]--;
    }
    notifyListeners();
  }

  /// Remove the counter at the given index
  void removeCounter(int index) {
    counterList.removeAt(index);
    notifyListeners();
  }

  /// Remove the last counter
  void removeLastCounter() {
    counterList.removeLast();
    notifyListeners();
  }

  /// Reset all counters
  void resetCounter() {
    counterList.clear();
    notifyListeners();
  }
}
