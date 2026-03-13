import 'package:flutter/material.dart';

class AnswerPra extends StatelessWidget {
  const AnswerPra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              _showTitleWidget('Login Screen'),
              SizedBox(height: 20),
              _showTextTextFieldWidget('Useranme'),
              SizedBox(height: 10),
              _showTextTextFieldWidget('Password'),
              SizedBox(height: 20),
              _showButtonActionWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _showTitleWidget(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  Widget _showTextTextFieldWidget(String label) {
    return Row(
      children: [
        Text(label),
        SizedBox(width: 10),
        Expanded(
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ],
    );
  }

  Widget _showButtonActionWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
          ),
          child: Text('Login'),
        ),
        SizedBox(width: 10),
        ElevatedButton(onPressed: () {}, child: Text('Register')),
      ],
    );
  }
}
