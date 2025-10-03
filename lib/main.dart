import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContentSwitcher(),
    );
  }
}

class ContentSwitcher extends StatefulWidget {
  @override
  _ContentSwitcherState createState() => _ContentSwitcherState();
}

class _ContentSwitcherState extends State<ContentSwitcher> {
  int _index = 0;
  final String _text = "ПР3 Мишин А. А.";

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgets = [
      TextWidget(_text),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Работа с виджетами")),
      body: Center(child: _widgets[_index]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: "Text"),
          BottomNavigationBarItem(icon: Icon(Icons.crop_square), label: "Container"),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  TextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 24));
  }
}