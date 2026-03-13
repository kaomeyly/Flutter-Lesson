import 'package:flutter/material.dart';

class TestStackprathree extends StatelessWidget {
  const TestStackprathree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice Three'),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.70,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
