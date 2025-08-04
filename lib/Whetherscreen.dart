// ignore_for_file: file_names, camel_case_types, unnecessary_string_interpolations, use_build_context_synchronously, deprecated_member_use

import 'package:flutternew1/Info_pages/Whether_info.dart';
import 'package:flutternew1/Info_pages/Temprature.dart';
import 'package:flutternew1/Info_pages/humidity.dart';
import 'package:flutternew1/Info_pages/windspeed.dart';
import 'package:flutternew1/Info_pages/pressure.dart';
import 'package:flutternew1/colors.dart';
import 'package:flutternew1/colors2.dart';
import 'package:flutternew1/themeController.dart';
import 'package:flutternew1/themebase.dart';
import 'package:flutternew1/model.dart';
import 'package:flutternew1/whetherappapifunction.dart';
import 'package:flutternew1/districtmenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}
bool isDark = false;
class _Home_pageState extends State<Home_page> {
   final ThemeController themeController = Get.find<ThemeController>(); // Get the controller
  late AppColorBase colors;
  
  List<String> subDistricts = [];
  List<String> dropdownItems = districtMap.keys.toList();

  String selectedDistrict = 'Dharmapuri';
  String selectedSubDistrict = 'Harur';

  WhetherModel? weatherData;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    colors = themeController.colors;
    selectedSubDistrict = districtMap[selectedDistrict]!.first;
    subDistricts = districtMap[selectedDistrict]!;
    selectedSubDistrict = subDistricts.first;
    fetchWeatherData();
  }

  void fetchWeatherData() async {
    setState(() {
      isLoading = true;
    });

    try {
      final data = await fetchWeather(selectedSubDistrict);
      setState(() {
        weatherData = data;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("unable to fetch whether info",style: TextStyle(color: Colors.black.withOpacity(2.0)),),
          backgroundColor: const Color.fromARGB(255, 233, 235, 236),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
    }
  }

  String formatTime(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return "${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() { 
      colors = themeController.isDark.value ? DarkAppColors() : AppColors();
    return Scaffold(
      backgroundColor: colors.background,
      drawer: Drawer(child: ListView()),
      body: SafeArea(
        child:isLoading
              ? Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18),
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                           color: colors.containers,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              
                               Text('Weather Info',
                                  style: TextStyle(
                                      color: colors.texts,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                                      Spacer(),
                                      IconButton(onPressed: (){
  fetchWeatherData();
}, icon: Icon(Icons.refresh,color: colors.texts,)),
                            IconButton(
  onPressed: () {
    themeController.toggleTheme(); 
  },
  icon: Obx(() => Icon(
    themeController.isDark.value ? Icons.dark_mode : Icons.light_mode,
    color: themeController.colors.texts,
  )),
),

                            ],
                          ),
                        ),
                      ),
                      
                     
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SizedBox(
                          height: 120,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                rowboxes((Icons.water_drop), "Humidity",
                                    "${weatherData!.humidity}%"),
                                SizedBox(width: 15),
                                rowboxes((Icons.wind_power_rounded), "Wind Speed",
                                    "${weatherData!.speed} km/h"),
                                SizedBox(width: 15),
                                rowboxes((Icons.beach_access_sharp), "Pressure",
                                    "${weatherData!.pressure} hPa"),
                                SizedBox(width: 15),
                                rowboxes((Icons.hourglass_empty_outlined),
                                    "Max temp", "${weatherData!.maxtemp} °C"),
                                SizedBox(width: 15),
                                rowboxes((Icons.sunny), "Sunrise",
                                    "${formatTime(weatherData!.sunrise)}"),
                                SizedBox(width: 15),
                                rowboxes((Icons.nightlight), "Sunset",
                                    "${formatTime(weatherData!.sunset)}"),
                                SizedBox(width: 5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 370,
                        width: 360,
                        decoration: BoxDecoration(
                           boxShadow: [
          BoxShadow(
            color:  colors.black2,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
                          borderRadius: BorderRadius.circular(15),
                         color: colors.containers
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 20),
                              Icon(Icons.cloud, size: 100,color: colors.texts),
                              SizedBox(height: 20),
                              Text("${weatherData!.detail.toUpperCase()}",
                                  style: TextStyle(
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: colors.texts)),
                              SizedBox(height: 20),
                              Text("Temprature: ${weatherData!.tempratue} °C",
                                  style: TextStyle(
                                    color: colors.texts,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2)),
                              SizedBox(height: 20),
                               Text("Select Location ",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2,color:colors.texts ),),

                              Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            height: 50,
                            width: 340,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              color: colors.containers
                              ),
                            child: Row(
                              children: [
                               SizedBox(
                                width: 5,
                               ),
                                Theme(
                                  data: Theme.of(context).copyWith(
    canvasColor: colors.containers,),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value: selectedDistrict,
                                      
                                      isDense: true,
                                      alignment: Alignment.centerLeft,
                                      onChanged: (newDistrict) {
                                        if (newDistrict != null) {
                                          setState(() {
                                            selectedDistrict = newDistrict;
                                            subDistricts =
                                                districtMap[newDistrict]!;
                                                selectedSubDistrict = subDistricts.first;
                                            
                                          });
                                          fetchWeatherData();
                                        }
                                      },
                                      items: dropdownItems.map((district) {
                                        return DropdownMenuItem(
                                          value: district,
                                          
                                          child: SizedBox(
                                            width: 130,
                                            child: Text(district,overflow: TextOverflow.ellipsis,
                                          maxLines: 1,selectionColor:  colors.texts,)),
                                        );
                                      }).toList(),iconEnabledColor: colors.texts,iconDisabledColor: colors.texts,style: TextStyle(fontWeight: FontWeight.bold,color: colors.texts),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Theme(
                                  data: Theme.of(context).copyWith(
    canvasColor: colors.containers,),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      
                                      
                                      value: selectedSubDistrict,
                                      onChanged: (newSubDistrict) {
                                        if (newSubDistrict != null) {
                                          setState(() {
                                            selectedSubDistrict = newSubDistrict;
                                          });
                                          fetchWeatherData();
                                        }
                                      },
                                      items: subDistricts.map((sub) {
                                        return DropdownMenuItem(
                                          value: sub,
                                          child: SizedBox(child: Text(sub,overflow: TextOverflow.ellipsis,
                                          maxLines: 1,selectionColor: colors.containers,
                                          )));
                                      }).toList(),iconDisabledColor: colors.texts,iconEnabledColor: colors.texts,
                                      style: TextStyle(color: colors.texts,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    
                          ),
                        ),
                      ),
                              
                       SizedBox(
                        height: 10,
                       )  ,

                              
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height:20),
                       
                      SizedBox(
                        height: 12,
                      ),
                     
                       
                       Padding(
                         padding: const EdgeInsets.all(18.0),
                         child: Column(
                           children: [
                             Align(alignment: Alignment.centerLeft, child: Text("Additional Information ",style: TextStyle(color: colors.texts,fontWeight: FontWeight.bold,fontSize: 20))),
                            SizedBox(
                              height: 10,
                            ),
                             listmethod(Page1(),Icons.cloud,"Whether Info"),
                             SizedBox(
                              height: 10,
                            ),
                             listmethod(Page2(),Icons.hourglass_bottom,"Temperature"),
                             SizedBox(
                              height: 10,
                            ),
                             listmethod(Page3(),Icons.water_drop_outlined,"Humidity"),
                             SizedBox(
                              height: 10,
                            ),
                             listmethod(Page4(),Icons.wind_power_outlined,"Wind Speed"),
                             SizedBox(
                              height: 10,
                            ),
                             listmethod(Page5(),Icons.beach_access_outlined,"Pressure"),
                             SizedBox(  
                              height:10
                             ),
                             
                             
                           ],
                         ),
                       ),
                  
                  
                    ],
                  ),
                  
                ),
                
    
      ),
    );});
  }

  InkWell listmethod(page,icn,title,) {
    return InkWell(
                            onTap: (){
                              Get.to(page);
                            },
                             child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                               color: colors.containers
                              ),
                               child: ListTile(
                               
                                 leading: Icon(icn,color: colors.texts,),
                                 
                                 title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,color: colors.texts),),
                                 trailing: Icon(Icons.arrow_right_alt,color: colors.texts,),
                               ),
                             ),
                           );
  }

  Container rowboxes(icn, title, val) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
          color: Colors.black87,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: colors.containers,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icn,color: colors.texts,),
          SizedBox(height: 10),
          Text(title,style: TextStyle(color: colors.texts,fontWeight: FontWeight.bold),),
          SizedBox(height: 5),
          Text(val,style: TextStyle(color: colors.texts,),)
        ],
      ),
    );
  }
}
