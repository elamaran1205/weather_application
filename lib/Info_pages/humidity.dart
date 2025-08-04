// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themeController.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Get.find<ThemeController>().colors;
   
    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
         backgroundColor:colors.containers,
      ),
      body: SizedBox(
        
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                
                children: [
                  Text(" Humidity ",style: TextStyle(color:  colors.texts,fontWeight: FontWeight.bold,fontSize: 30),
                  
              ),
               SizedBox(
                height: 20,
               ), // Push content halfway down
                Text("Humidity is the amount of water vapor present in the air.It is usually expressed as a percentage, known as relative humidity.Higher humidity makes the air feel warmer and can cause discomfort.It affects weather patterns, human comfort, and even electronics.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:colors.texts),),
                  SizedBox(
                height: 20,
               ),
                Text("A comfortable indoor humidity level is around 30% to 50%.Tropical regions may have outdoor humidity above 70% regularly.In dry areas, it can fall below 20%, causing dry skin and irritation.Usual levels vary with seasons and local climate.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:colors.texts),),
                SizedBox(
                height: 20,
               ),
               Text("Humidity above 70% can lead to mold, dust mites, and discomfort.Low humidity (below 20%) can dry out skin, eyes, and respiratory passages.Very high humidity combined with heat increases the risk of heatstroke.Maintaining balanced humidity is important for health and comfort.",
               style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:colors.texts),),
               SizedBox(
                height: 20,
               )
                ]
                  ),
            ),
          ),
        ),
      )
      );
      }
      }