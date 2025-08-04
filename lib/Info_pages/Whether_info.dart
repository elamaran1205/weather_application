// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutternew1/themeController.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
     final ThemeController themeController = Get.find();
    return Obx(() {
    final colors = themeController.colors;
    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
         backgroundColor: colors.containers,
      ),
      body: SizedBox(
        
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                
                children: [
                  Text("How whether info works ?",style: TextStyle(color:  colors.texts,fontWeight: FontWeight.bold,fontSize: 30),
                  
              ),
               SizedBox(
                height: 20,
               ), // Push content halfway down
                Text("Weather refers to the current state of the atmosphere at a particular location.It includes temperature, humidity, wind speed, precipitation, and cloud cover.Weather changes frequently due to various natural and environmental factors.It affects our daily life, agriculture, travel, and outdoor activities.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: colors.texts),),
                  SizedBox(
                height: 20,
               ),
                Text("Weather forecasting uses data from satellites, radars, weather stations, and balloons.These data are fed into supercomputers that simulate the atmosphere using complex models.Meteorologists analyze these outputs to predict future weather conditions.Forecasts can be short-term (hours/days) or long-term (weeks/months).",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: colors.texts),),
                SizedBox(
                height: 20,
               ),
               Text("Short-term forecasts (1–3 days) are usually very accurate (up to 90%).Accuracy decreases slightly for longer forecasts due to atmospheric complexity.Modern forecasting is far more reliable thanks to advanced technology and AI.However, sudden weather changes can still reduce prediction accuracy.",
               style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: colors.texts),),
               SizedBox(
                height: 20,
               )
                ]
                  ),
            ),
          ),
        ),
      ));});
  }
}