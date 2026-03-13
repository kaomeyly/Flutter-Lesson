import 'package:flutter/material.dart';

class CounterproviderEx extends InheritedWidget {
  final int count;
  final Function increment;

  const CounterproviderEx({
    super.key,
    required this.count,
    required this.increment,
    required super.child,
  });

  static CounterproviderEx of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterproviderEx>()!;
  }

  @override
  bool updateShouldNotify(CounterproviderEx oldWidget) {
    return oldWidget.count != count;
  }
}
