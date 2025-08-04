import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model.dart';

Future<WhetherModel> fetchWeather(String selectedDistrict) async {
  final apiKey = 'ffbce2e111164546fa5a6398fce182e4';
  final url = Uri.parse(
    'https://api.openweathermap.org/data/2.5/weather?q=$selectedDistrict&appid=$apiKey&units=metric',
  );

  final response = await http.get(url);
  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);

    // Convert sunrise and sunset from timestamp to formatted string
    

    return WhetherModel(
      tempratue: jsonData['main']['temp'].toDouble(),
      humidity: jsonData['main']['humidity'],
      pressure: jsonData['main']['pressure'].toDouble(),
      speed: jsonData['wind']['speed'].toDouble(),
      detail: jsonData['weather'][0]['main'],
      maxtemp: jsonData['main']['temp_max'].toDouble(),
      sunrise: (jsonData['sys']['sunrise']),
      sunset: (jsonData['sys']['sunset']),
    );
  } else {
    throw Exception('Failed to load weather');
  }
}
