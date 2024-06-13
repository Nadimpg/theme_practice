// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class ThemeController extends GetxController {
//   var isDark = false.obs;
//
//   ThemeData get darkTheme => ThemeData(
//     primaryColor: Colors.black12,
//     brightness: Brightness.dark,
//     primaryColorDark: Colors.black12,
//   );
//
//   ThemeData get lightTheme => ThemeData(
//     primaryColor: Colors.white,
//     brightness: Brightness.light,
//     primaryColorDark: Colors.white,
//   );
//
//   @override
//   void onInit() {
//     super.onInit();
//     loadTheme();
//   }
//
//   void toggleTheme() {
//     isDark.value = !isDark.value;
//     saveTheme(isDark.value);
//   }
//
//   void loadTheme() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     isDark.value = prefs.getBool("isDark") ?? false;
//   }
//
//   void saveTheme(bool value) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool("isDark", value);
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  var isDark = false.obs;

  ThemeData get darkTheme => ThemeData(
    hintColor: Colors.white,
    scaffoldBackgroundColor: Colors.black54,
    cardColor: Colors.blue,
    primaryColor: Colors.orange,
    brightness: Brightness.dark,
    primaryColorDark: Colors.black12,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black12,
      toolbarTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(color:Colors.white,fontSize:16),
        isDense: true,
        contentPadding:const EdgeInsets.symmetric(
            horizontal:12,
            vertical: 16
        ),
        enabledBorder: enableBorder(),
        focusedBorder: focusedBorder(),
        errorBorder:errorBorder()
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w500),
      headline2: TextStyle(color: Colors.deepPurpleAccent,fontSize: 18,fontWeight: FontWeight.w500),
      headline3: TextStyle(color: Colors.greenAccent,fontSize: 24,fontWeight: FontWeight.w500),
      headline4: TextStyle(color: Colors.red,fontSize: 32,fontWeight: FontWeight.w500),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.white),
      trackColor: MaterialStateProperty.all(Colors.grey),
    ),
  );

  ThemeData get lightTheme => ThemeData(
    hintColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.red,
    primaryColor: Colors.greenAccent,
    brightness: Brightness.light,
    primaryColorDark: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.red,
      toolbarTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleTextStyle: TextStyle(
        color: Colors.green,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
       headline1: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.w500),
       headline2: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.w500),
       headline3: TextStyle(color: Colors.blue,fontSize: 24,fontWeight: FontWeight.w500),
       headline4: TextStyle(color: Colors.orange,fontSize: 32,fontWeight: FontWeight.w500),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.black),
      trackColor: MaterialStateProperty.all(Colors.grey),
    ),

    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.black12,
        hintStyle: TextStyle(color:Colors.white,fontSize:16),
        isDense: true,
        contentPadding:EdgeInsets.symmetric(
            horizontal:12,
            vertical: 16
        ),
        enabledBorder: enableBorder(),
        focusedBorder: focusedBorder(),
        errorBorder:errorBorder()
    ),
  );
  OutlineInputBorder enableBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    );
  }
  OutlineInputBorder focusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide:BorderSide(
        color: Colors.green,
      ),
    );
  }

  OutlineInputBorder errorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:const BorderSide(
        color: Colors.red,
      ),
    );
  }


  @override
  void onInit() {
    super.onInit();
    loadTheme();
  }

  void toggleTheme() {
    isDark.value = !isDark.value;
    saveTheme(isDark.value);
  }

  void loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDark.value = prefs.getBool("isDark") ?? false;
  }

  void saveTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isDark", value);
  }
}
