import 'package:flutter/material.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._();
  static BottomSheetThemeData lightBottomsheettheme = BottomSheetThemeData(
      showDragHandle: true,
      modalBackgroundColor: Colors.white,
      constraints: const BoxConstraints(minWidth: double.infinity),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));
  static BottomSheetThemeData darkBottomsheettheme = BottomSheetThemeData(
      showDragHandle: true,
      modalBackgroundColor: Colors.black,
      constraints: const BoxConstraints(minWidth: double.infinity),
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));
}
