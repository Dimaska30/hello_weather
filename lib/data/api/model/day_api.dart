import 'package:hello_weather/data/api/model/temp_api.dart';
import 'package:hello_weather/data/api/model/feels_like_api.dart';

class ApiDay {
  final int time;
  final int timeSunrise;
  final int timeSunset;
  final ApiTemp temp;
  final ApiFeelsLike feelsLike;
  final int weatherId;
  final String weatherMain;
  final String weatherDescription;
  final double pressure;
  final double humidity;
  final double speed;
  final double deg;
  final double gust;
  final double clouds;
  final double? rain;
  final double? snow;
  final double pop;

  ApiDay.fromApi(Map<String, dynamic> map)
      : time = map['dt'],
        timeSunrise = map['sunrise'],
        timeSunset = map['sunset'],
        temp = ApiTemp.fromApi(map['temp']),
        feelsLike = ApiFeelsLike.fromApi(map['feels_like']),
        weatherId = map['weather'][0]['id'],
        weatherMain = map['weather'][0]['main'],
        weatherDescription = map['weather'][0]['description'],
        pressure = map['pressure'],
        humidity = map['humidity'],
        speed = map['wind_speed'],
        deg = map['wind_deg'],
        gust = map['wind_gust'],
        clouds = map['clouds'],
        rain = map['rain'],
        snow = map['snow'],
        pop = map['pop'];
}
