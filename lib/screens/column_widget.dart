import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  final String text;
  ColumnWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: TextStyle(fontSize: 24)),
        SizedBox(height: 10),
        Text(text.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        SizedBox(height: 10),
        Text(text, style: TextStyle(fontSize: 24)),
        SizedBox(height: 10),
        Text(text.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24))
      ],
    );
  }
}
