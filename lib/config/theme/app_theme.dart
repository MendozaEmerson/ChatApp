import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 231, 235, 8);

const List<Color> _colorThemes = [
  _customColor,
  Colors.deepOrangeAccent,
  Colors.teal,
  Colors.greenAccent,
  Colors.blue,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}) 
    : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1, 
      "Colors must be betwen 0 and ${_colorThemes.length}");

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark,
    );
  }
}
