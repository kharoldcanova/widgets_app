import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.purple,
  Colors.orange,
  Colors.cyanAccent,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor <= 0, 'Selected color must be then 0'),
        assert(selectedColor < colorList.length,
            'Selected color must be less or equal then ${colorList.length - 1}');

  ThemeData setTheme() => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorSchemeSeed: colorList[selectedColor]);
}
