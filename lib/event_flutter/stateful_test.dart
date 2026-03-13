import 'package:flutter/material.dart';

class StatefulTest extends StatefulWidget {
  const StatefulTest({super.key});

  @override
  State<StatefulTest> createState() => _StatefulTestState();
}

class _StatefulTestState extends State<StatefulTest> {
  String pathImage = "assets/img/image2.png";
  bool status = true;

  void _changeImage() {
    setState(() {
      if (status) {
        pathImage = "assets/img/image2.png";
      } else {
        pathImage = "assets/img/image3.png";
      }
      status = !status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Image Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage(pathImage),
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  _changeImage();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: Text('Change')),
          ],
        ),
      ),
    );
  }
}
