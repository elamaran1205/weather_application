// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutternew1/themeController.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

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
                  Text(" Humidity ",style: TextStyle(color:colors.texts,fontWeight: FontWeight.bold,fontSize: 30),
                  
              ),
               SizedBox(
                height: 20,
               ), // Push content halfway down
                Text("Wind speed refers to how fast the air is moving in the atmosphere. It is usually measured in kilometers per hour (km/h) or meters per second (m/s).",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: colors.texts),),
                  SizedBox(
                height: 20,
               ),
                Text("A normal wind speed ranges between 5–20 km/h, which feels like a gentle breeze.When wind speeds exceed 40–50 km/h, they can start to feel strong and may cause discomfort.Speeds above 70–80 km/h are considered dangerous and can lead to damage or hazardous situations, especially during storms or cyclones.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: colors.texts),),
                SizedBox(
                height: 20,
               ),
               Text("Wind speed increases mainly due to differences in air pressure caused by uneven heating of the Earth. Warm air rises and cooler air moves in, creating movement. Storms and strong weather systems can also boost wind speeds. Geographic features like mountains or open plains can further influence how fast the wind blows.",
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