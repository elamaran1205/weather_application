class WhetherModel {
  final double tempratue;
  final int humidity;
  final double pressure;
  final double speed;
  final String detail;
  final double maxtemp;
  final int sunrise;
  final int sunset;

  WhetherModel({
    required this.tempratue,
    required this.humidity,
    required this.pressure,
    required this.speed,
    required this.detail,
    required this.maxtemp,
    required this.sunrise,
    required this.sunset,
  });

  factory WhetherModel.fromJson(Map<String, dynamic> json) {
    return WhetherModel(
      tempratue: (json['temprature'] ?? 0).toDouble(),
      humidity: (json['humidity'] ?? 0).toInt(),
      pressure: (json['pressure'] ?? 0).toDouble(),
      speed: (json['speed'] ?? 0).toDouble(),
      detail: json['detail'] ?? '',
      maxtemp: (json['maxtemp'] ?? 0).toDouble(),
      sunrise: (json['sunrise'] ?? 0).toInt(),
      sunset: (json['sunset'] ?? 0).toInt(),
    );
  }
}
