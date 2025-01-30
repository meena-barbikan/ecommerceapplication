import 'package:flutter/material.dart';

import 'custom_themed/appbar_theme.dart';
import 'custom_themed/bottom_sheet_theme.dart';
import 'custom_themed/check_box_theme.dart';
import 'custom_themed/chip_theme.dart';
import 'custom_themed/elevated_button_theme.dart';
import 'custom_themed/outline_button_theme.dart';
import 'custom_themed/text_field_theme.dart';
import 'custom_themed/text_theme.dart';

class TthemeData {
  TthemeData._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    chipTheme: TchipTheme.lightchipTheme,
    checkboxTheme: TcheckBoxtheme.lightcheckboxtheme,
    textTheme: TtextTheme.lightTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppbarTheme.LightAppBartheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomsheettheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightoutlineButtonTheme,
    inputDecorationTheme: TtextfieldTheme.lightInputdecoraionTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TtextTheme.darkTheme,
    chipTheme: TchipTheme.darkchipTheme,
    checkboxTheme: TcheckBoxtheme.darkcheckboxtheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppbarTheme.darkAppBartheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomsheettheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkoutlineButtonTheme,
    inputDecorationTheme: TtextfieldTheme.darkInputdecoraionTheme,
  );
}
