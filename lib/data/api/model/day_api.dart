import 'package:hello_weather/data/api/model/temp_api.dart';
import 'package:hello_weather/data/api/model/feels_like_api.dart';

class ApiDay {
  final String time;
  final String timeSunrise;
  final String timeSunset;
  final ApiTemp temp;
  final ApiFeelsLike feelsLike;
  final num weatherId;
  final String weatherMain;
  final String weatherDescription;
  final num pressure;
  final num humidity;
  final num speed;
  final num deg;
  final num gust;
  final num clouds;
  final num rain;
  final num snow;
  final num pop;

  ApiDay.fromApi(Map<String, dynamic> map)
      : time = map['results']['time'],
        timeSunrise = map['results']['time_sunrise'],
        timeSunset = map['results']['time_sunset'],
        temp = ApiTemp.fromApi(map['results']['temp']),
        feelsLike = ApiFeelsLike.fromApi(map['results']['feels_like']),
        weatherId = map['results']['weather_id'],
        weatherMain = map['results']['weather_main'],
        weatherDescription = map['results']['weather_description'],
        pressure = map['results']['pressure'],
        humidity = map['results']['humidity'],
        speed = map['results']['speed'],
        deg = map['results']['deg'],
        gust = map['results']['gust'],
        clouds = map['results']['clouds'],
        rain = map['results']['rain'],
        snow = map['results']['snow'],
        pop = map['results']['pop'];
}
