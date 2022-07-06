import 'package:flutter/foundation.dart';
import 'package:hello_weather/data/api/day_api.dart';
import 'package:hello_weather/domain/model/day.dart';
import 'package:hello_weather/data/mapper/feels_like_mapper.dart';
import 'package:hello_weather/data/mapper/temp_mapper.dart';

class DayMapper {
  static Day fromApi(ApiDay day) {
    DateTime temp1, temp2, temp3;
    temp1 = temp2 = temp3 = DateTime.now();
    try {
      temp1 = DateTime.parse(day.time);
      temp2 = DateTime.parse(day.timeSunrise);
      temp3 = DateTime.parse(day.timeSunset);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return Day(
      time: temp1,
      timeSunrise: temp2,
      timeSunset: temp3,
      temp: TempMapper.fromApi(day.temp),
      feelsLike: FeelsLikeMapper.fromApi(day.feelsLike),
      weatherId: day.weatherId.toInt(),
      weatherMain: day.weatherMain,
      weatherDescription: day.weatherDescription,
      pressure: day.pressure.toDouble(),
      humidity: day.pressure.toDouble(),
      speed: day.pressure.toDouble(),
      deg: day.pressure.toDouble(),
      gust: day.gust.toDouble(),
      clouds: day.pressure.toDouble(),
      rain: day.pressure.toDouble(),
      snow: day.pressure.toDouble(),
      pop: day.pressure.toDouble(),
    );
  }
}
