import 'package:flutter/material.dart';

class TestStacknew extends StatelessWidget {
  const TestStacknew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Stack'),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: MediaQuery.sizeOf(context).height * 0.80,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: (MediaQuery.sizeOf(context).height * 0.80) - 100,
                color: Colors.blue,
              ),
              Align(
                alignment: Alignment(0, 0.9), // Slightly below center
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 8,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 150, horizontal: 130),
                    child: const Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
