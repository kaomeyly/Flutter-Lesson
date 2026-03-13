import 'package:flutter/material.dart';
import 'package:flutter_application_1/inheritedwidgetCounterapp/counterprovider_ex.dart';

class MycounterwidgetEx extends StatefulWidget {
  final Widget child;

  const MycounterwidgetEx({super.key, required this.child});

  @override
  MycounterwidgetExState createState() => MycounterwidgetExState();
}

class MycounterwidgetExState extends State<MycounterwidgetEx> {
  int c = 0;

  void incrementByOne() {
    setState(() {
      c++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterproviderEx(
      count: c,
      increment: incrementByOne,
      child: widget.child,
    );
  }
}
