class Day {
  final DateTime time;
  final DateTime timeSunrise;
  final DateTime timeSunset;
  final Map<String, double> temp;
  final Map<String, double> feelsLike;
  final int weatherId;
  final String weatherMain;
  final String weatherDescription;
  final double pressure;
  final double humidity;
  final double speed;
  final double deg;
  final double gust;
  final double clouds;
  final double rain;
  final double snow;
  final double pop;

  Day({
    required this.time,
    required this.timeSunrise,
    required this.timeSunset,
    required this.temp,
    required this.feelsLike,
    required this.weatherId,
    required this.weatherMain,
    required this.weatherDescription,
    required this.pressure,
    required this.humidity,
    required this.speed,
    required this.deg,
    required this.gust,
    required this.clouds,
    required this.rain,
    required this.snow,
    required this.pop,
  });
}
