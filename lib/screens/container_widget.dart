import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final String text;
  const ContainerWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.lightBlue[100],
      child: Text(text, style: const TextStyle(fontSize: 20)),
    );
  }
}
