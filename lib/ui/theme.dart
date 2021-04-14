import 'package:absensi_sekolah/ui/design.dart';
import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins',
    appBarTheme: _appBarTheme(),
    textTheme: _textTheme(),
    inputDecorationTheme: _inputDecorationTheme(),
  );
}

AppBarTheme _appBarTheme() {
  return const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}

TextTheme _textTheme() {
  return const TextTheme(
    headline1: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
    headline2: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
    headline3: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
    headline4: TextStyle(fontSize: 16),
    bodyText1: TextStyle(fontSize: 14),
    bodyText2: TextStyle(fontSize: 12),
    button: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
  );
}

OutlineInputBorder _outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(28.0),
  );
}

InputDecorationTheme _inputDecorationTheme() {
  return InputDecorationTheme(
    focusedBorder:
        _outlineInputBorder().copyWith(borderSide: BorderSide(color: blue)),
    errorBorder:
        _outlineInputBorder().copyWith(borderSide: BorderSide(color: red)),
    border: _outlineInputBorder().copyWith(borderSide: BorderSide.none),
    focusedErrorBorder:
        _outlineInputBorder().copyWith(borderSide: BorderSide(color: red)),
    hintStyle: const TextStyle(fontSize: 14),
    filled: true,
    fillColor: white,
    contentPadding: const EdgeInsets.symmetric(vertical: 14),
  );
}
