import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String text;
  const ButtonWidget(this.text, {super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  bool _isRed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 24,
            color: _isRed ? Colors.red : Colors.blue,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => setState(() => _isRed = !_isRed),
          child: const Text("Поменять цвет"),
        ),
      ],
    );
  }
}
