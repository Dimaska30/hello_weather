import 'package:flutter/foundation.dart';
import 'package:hello_weather/data/api/model/day_api.dart';
import 'package:hello_weather/domain/model/day.dart';
import 'package:hello_weather/data/mapper/feels_like_mapper.dart';
import 'package:hello_weather/data/mapper/temp_mapper.dart';

class DayMapper {
  static Day fromApi(ApiDay day) {
    DateTime temp1, temp2, temp3;
    temp1 = temp2 = temp3 = DateTime.now();
    try {
      temp1 = DateTime.fromMillisecondsSinceEpoch(day.time);
      temp2 = DateTime.fromMillisecondsSinceEpoch(day.timeSunrise);
      temp3 = DateTime.fromMillisecondsSinceEpoch(day.timeSunset);
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
      humidity: day.humidity.toDouble(),
      speed: day.speed.toDouble(),
      deg: day.deg.toDouble(),
      gust: day.gust.toDouble(),
      clouds: day.clouds.toDouble(),
      rain: day.rain?.toDouble() ?? -1,
      snow: day.snow?.toDouble() ?? -1,
      pop: day.pressure.toDouble(),
    );
  }
}
