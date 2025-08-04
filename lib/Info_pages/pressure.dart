// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themeController.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

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
                  Text(" Humidity ",style: TextStyle(color: colors.texts,fontWeight: FontWeight.bold,fontSize: 30),
                  
              ),
               SizedBox(
                height: 20,
               ), // Push content halfway down
                Text("Atmospheric pressure is the weight of air pressing down on Earth. Low pressure often brings storms, while high pressure brings clear skies. Sudden changes can affect humans, causing headaches or discomfort. Pressure increases when cool, dense air sinks and gathers in an area.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: colors.texts),),
                  SizedBox(
                height: 20,
               ),
                Text("Atmospheric pressure is the force exerted by the weight of air above us. It affects weather patterns—high pressure usually means clear, calm skies, while low pressure leads to clouds and storms. Rapid pressure changes can impact human health, causing headaches, joint pain, or fatigue. Pressure increases when cooler, denser air sinks or when warm air rises rapidly elsewhere, drawing in heavier air.",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: colors.texts),),
                SizedBox(
                height: 20,
               ),
               Text("Sudden changes in atmospheric pressure can also affect the functioning of the lungs and sinuses, especially in people with respiratory conditions like asthma or sinusitis.",
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