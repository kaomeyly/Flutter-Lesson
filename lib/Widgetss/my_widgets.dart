import 'package:flutter/material.dart';

class Mywidgets {
  static Widget showTitleWidget(String title) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 38,
        color: Colors.black,
      ),
    );
  }

  static Widget showTitleWidgetWithLabel(
      {String? title, double width = 0, double heigt = 0}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width,
        height: heigt,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black, width: 1.0),
        ),
        child: Center(
          child: Text(
            '$title',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
