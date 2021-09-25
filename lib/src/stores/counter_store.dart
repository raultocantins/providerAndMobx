import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

class Counter = _CounterBase with _$Counter;

abstract class _CounterBase with Store {
  @observable
  int counter = 0;
  @observable
  bool mobX = false;

  @action
  void increment() {
    counter++;
  }

  @action
  void decrement() {
    if (counter > 0) {
      counter--;
    }
  }
}
