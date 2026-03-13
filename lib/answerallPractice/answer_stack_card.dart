import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgetss/my_widgets.dart';

class AnswerStackCard extends StatelessWidget {
  const AnswerStackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Using Container'),
      ),
      body: Column(
        children: [
          Mywidgets.showTitleWidget('My Pet Shop'),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Mywidgets.showTitleWidgetWithLabel(
                title: 'Cat',
                width: 100,
                heigt: 100,
              ),
              Mywidgets.showTitleWidgetWithLabel(
                title: 'Dog',
                width: 100,
                heigt: 100,
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Mywidgets.showTitleWidgetWithLabel(
                    title: 'Big ox',
                    width: 100,
                    heigt: 40,
                  ),
                  Mywidgets.showTitleWidgetWithLabel(
                    title: 'Small ox',
                    width: 100,
                    heigt: 40,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
