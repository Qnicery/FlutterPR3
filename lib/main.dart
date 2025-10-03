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
      ContainerWidget(_text),
      ColumnWidget(_text),
      RowWidget(_text),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Работа с виджетами")),
      body: Center(child: _widgets[_index]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: "Text"),
          BottomNavigationBarItem(icon: Icon(Icons.crop_square), label: "Container"),
          BottomNavigationBarItem(icon: Icon(Icons.view_column), label: "Column"),
          BottomNavigationBarItem(icon: Icon(Icons.view_column), label: "Row"),
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

class ContainerWidget extends StatelessWidget {
  final String text;
  ContainerWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blue,
      child: Text(text, style: TextStyle(fontSize: 20)),
    );
  }
}

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