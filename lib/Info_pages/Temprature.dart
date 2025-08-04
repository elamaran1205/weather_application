// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutternew1/themeController.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
                  Text(" Temprature ",style: TextStyle(color:  colors.texts,fontWeight: FontWeight.bold,fontSize: 30),
                  
              ),
               SizedBox(
                height: 20,
               ), // Push content halfway down
                Text("Temperature measures how hot or cold the atmosphere is at a given time.It is commonly recorded in Celsius (°C) or Fahrenheit (°F).Temperature affects everything from our clothing choices to electricity usage.It also plays a major role in weather conditions like snow, rain, or heatwaves.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: colors.texts),),
                  SizedBox(
                height: 20,
               ),
                Text("Usual temperature ranges vary based on location and season.In many regions, 20°C to 30°C (68°F to 86°F) is considered comfortable.Temperate zones may see lows around 10°C and highs up to 35°C.Mountain areas and coastal cities may have cooler average temperatures.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: colors.texts),),
                SizedBox(
                height: 20,
               ),
               Text("Temperatures above 40°C (104°F) can cause heat exhaustion or heatstroke.Below 0°C (32°F), there's a risk of frostbite and hypothermia without protection.Extreme temperatures also affect roads, buildings, and electronic devices.Staying hydrated and sheltered is crucial during dangerous weather conditions.",
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