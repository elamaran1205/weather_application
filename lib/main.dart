// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutternew1/Whetherscreen.dart';
import 'package:flutternew1/themeController.dart';

import 'package:get/get.dart';

void main(){
  runApp(Whether());
}

class Whether extends StatelessWidget {
  const Whether({super.key});

  @override
  Widget build(BuildContext context) {
final ThemeController themeController = Get.put(ThemeController());
    return Obx(() {
      final colors = themeController.colors;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData.light(),
        darkTheme: ThemeData.dark(), 
        themeMode: themeController.isDark.value ? ThemeMode.dark : ThemeMode.light,
      home: Home_page(),
      
    );
   } ) ;   
  }
}