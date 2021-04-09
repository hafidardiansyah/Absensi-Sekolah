import 'package:absensi_sekolah/ui/design.dart';
import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Poppins",
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    // color: Colors.transparent,
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: blue),
      borderRadius: BorderRadius.circular(28.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: red),
      borderRadius: BorderRadius.circular(28.0),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(28.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: red),
      borderRadius: BorderRadius.circular(28.0),
    ),
    hintStyle: textSmall.copyWith(color: gray4),
    filled: true,
    fillColor: white,
    contentPadding: const EdgeInsets.symmetric(vertical: 15),
  );
}
