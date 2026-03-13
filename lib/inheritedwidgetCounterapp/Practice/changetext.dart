import 'package:flutter/material.dart';

class Changetext extends InheritedWidget {
  final String text;

  const Changetext({
    super.key,
    required this.text,
    required super.child,
  });

  static Changetext of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Changetext>()!;
  }

  @override
  bool updateShouldNotify(Changetext oldWidget) {
    return oldWidget.text != text;
  }
}
