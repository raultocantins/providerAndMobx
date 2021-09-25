// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _CounterBase, Store {
  final _$counterAtom = Atom(name: '_CounterBase.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$mobXAtom = Atom(name: '_CounterBase.mobX');

  @override
  bool get mobX {
    _$mobXAtom.reportRead();
    return super.mobX;
  }

  @override
  set mobX(bool value) {
    _$mobXAtom.reportWrite(value, super.mobX, () {
      super.mobX = value;
    });
  }

  final _$_CounterBaseActionController = ActionController(name: '_CounterBase');

  @override
  void increment() {
    final _$actionInfo = _$_CounterBaseActionController.startAction(
        name: '_CounterBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_CounterBaseActionController.startAction(
        name: '_CounterBase.decrement');
    try {
      return super.decrement();
    } finally {
      _$_CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
mobX: ${mobX}
    ''';
  }
}
