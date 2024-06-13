
import 'package:get/get.dart';
import 'package:theme_practice/controller/controller.dart';

class Dependancy extends Bindings {
  @override
  void dependencies() {
    //===================================Home Controller============================
    Get.lazyPut(() => ThemeController(), fenix: true);
  }
}