import 'package:flutter/material.dart';

class Tcolors {
  Tcolors._();
  // app basic color
  static const Color primaryColor = Color(0xff4b68ff);
  static const Color secondary = Color(0xffffe24B);
  static const Color accent = Color(0xffB0C7ff);

// GRAdient color
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ]);

  // textColor
  static const Color textprimaryColor = Color(0xff333333);
  static const Color textsecondary = Color(0xff6c7570);
  static const Color textwhite = Colors.white;

  // background color
  static const Color light = Color(0xffF6F6F6);
  static const Color dark = Color(0xff272727);
  static const Color primarybackground = Color(0XFFF3F5FF);
  // BACKGROUND container color
  static const Color lightcontainer = Color(0xffF6F6F6);
  static Color darkcontainer = Tcolors.white.withOpacity(0.1);
  // buttom color
  static const Color buttonprimary = Color(0xff4b68ff);
  static const Color buttonsecondary = Color(0xff6c757d);
  static const Color buttondisabled = Color(0XFFc4c4c4);

  // border color
  static const Color borderprimary = Color(0xffd9d9d9);
  static const Color borderSecondary = Color(0xffE6E6E6);
  // ERROR and Validation color
  static const Color error = Color(0xffD32F2F);
  static const Color success = Color(0xff388E3C);
  static const Color warning = Color(0XFFF57C00);
  static const Color info = Color(0xff1976D2);
  // Neutral color
  static const Color black = Color(0xff232323);
  static const Color darergrey = Color(0xFF4F4F4F);
  static const Color darkgrey = Color(0XFF939393);
  static const Color grey = Color(0xffE0E0E0);
  static const Color softgrey = Color(0xffF4F4F4);
  static const Color lightgrey = Color(0xffF9F9F9);
  static const Color white = Color(0xffFFFFFF);
}
