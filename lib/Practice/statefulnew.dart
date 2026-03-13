import 'package:flutter/material.dart';

class Statefulnew extends StatefulWidget {
  const Statefulnew({super.key});

  @override
  State<Statefulnew> createState() => _StatefulnewState();
}

class _StatefulnewState extends State<Statefulnew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo Home page "),
      ),
      body: Column(
        children: [
          Text("Calculator"),
        ],
      ),
    );
  }
}
