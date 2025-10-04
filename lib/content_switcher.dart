import 'package:flutter/material.dart';
import 'screens/text_widget.dart';
import 'screens/container_widget.dart';
import 'screens/column_widget.dart';
import 'screens/row_widget.dart';
import 'screens/button_widget.dart';

class ContentSwitcher extends StatefulWidget {
  @override
  _ContentSwitcherState createState() => _ContentSwitcherState();
}

class _ContentSwitcherState extends State<ContentSwitcher> {
  int _index = 0;
  final String _text = "ПР3 Мишин А.А.";

  final List<Widget> _widgets = [];

  @override
  void initState() {
    super.initState();
    _widgets.addAll([
      TextWidget(_text),
      ContainerWidget(_text),
      ColumnWidget(_text),
      RowWidget(_text),
      ButtonWidget(_text),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Работа с виджетами")),
      body: Center(child: _widgets[_index]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: "Text"),
          BottomNavigationBarItem(icon: Icon(Icons.crop_square), label: "Container"),
          BottomNavigationBarItem(icon: Icon(Icons.view_column), label: "Column"),
          BottomNavigationBarItem(icon: Icon(Icons.view_stream), label: "Row"),
          BottomNavigationBarItem(icon: Icon(Icons.touch_app), label: "Button"),
        ],
      ),
    );
  }
}
