import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final String text;
  RowWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FittedBox(
            child: FlutterLogo(),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(text, style: TextStyle(fontSize: 24), textAlign: TextAlign.center),
        ),
        SizedBox(width: 10),
        Expanded(
          child: FittedBox(
            child: Icon(Icons.sentiment_satisfied),
          ),
        ),
      ],
    );
  }
}
