import 'package:flutter/material.dart';

class TchipTheme {
  TchipTheme._();
  static ChipThemeData lightchipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(
      horizontal: 12.0,
      vertical: 12,
    ),
    checkmarkColor: Colors.white,
  );
  static ChipThemeData darkchipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(
      horizontal: 12.0,
      vertical: 12,
    ),
    checkmarkColor: Colors.white,
  );
}
