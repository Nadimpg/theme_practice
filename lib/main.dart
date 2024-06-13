import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_practice/view/home.dart';
import 'controller/controller.dart';
import 'core/dependency_injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Dependancy di = Dependancy();
  di.dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     ThemeController themeController = Get.find<ThemeController>();

    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dark Theme',
        themeMode: themeController.isDark.value ? ThemeMode.dark : ThemeMode.light,
        darkTheme: themeController.darkTheme,
        theme: themeController.lightTheme,
        home: const HomeScreen(),
      );
    });
  }
}
