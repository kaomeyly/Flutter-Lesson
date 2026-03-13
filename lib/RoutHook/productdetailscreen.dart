import 'package:flutter/material.dart';

class Productdetailscreen extends StatelessWidget {
  const Productdetailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Home Screen")],
        ),
      ),
    );
  }
}
