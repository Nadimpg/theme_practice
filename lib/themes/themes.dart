import 'package:flutter/material.dart';

class Themes {
  final bool isDarkMode;

  Themes({required this.isDarkMode});

  ThemeData get themeData {
    return isDarkMode ? _darkTheme : _lightTheme;
  }

  ThemeData get _lightTheme => ThemeData.light().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding:const EdgeInsets.all(20),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.maxFinite, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
        color: Colors.white,
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.green),
  );

  ThemeData get _darkTheme => ThemeData.dark().copyWith(
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.maxFinite, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(Colors.red.withOpacity(.50))),
      appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          shadowColor: Colors.white10),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(
              vertical: 14, horizontal: 10),
          filled: true,
          fillColor: Colors.red,
          hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  15),
              borderSide: BorderSide(
                  color: Colors.black, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  15),
              borderSide: BorderSide(
                  color: Colors.black, width: 1))));
}