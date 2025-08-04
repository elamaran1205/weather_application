// ignore: file_names
import 'package:flutternew1/themebase.dart';
import 'package:get/get.dart';
import 'package:flutternew1/colors.dart'; // your AppColors
import 'package:flutternew1/colors2.dart'; // your DarkAppColors

class ThemeController extends GetxController {
  RxBool isDark = false.obs;

  AppColorBase get colors => isDark.value ? DarkAppColors() : AppColors();

  void toggleTheme() {
    isDark.value = !isDark.value;
  }
}