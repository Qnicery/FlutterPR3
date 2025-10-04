import 'package:flutter/material.dart';
import 'content_switcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практическая работа 3',
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        ),
      ),
      home: ContentSwitcher(),
    );
  }
}



