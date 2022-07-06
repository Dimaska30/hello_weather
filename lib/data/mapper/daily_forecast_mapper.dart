import 'package:flutter/foundation.dart';
import 'package:hello_weather/data/api/daily_forecast_api.dart';
import 'package:hello_weather/domain/model/daily_forecast.dart';
import 'package:hello_weather/data/mapper/city_mapper.dart';
import 'package:hello_weather/data/mapper/day_mapper.dart';
import 'package:hello_weather/domain/model/day.dart';

class DailyForecastMapper {
  static DailyForecast fromApi(ApiDailyForecast forecast) {
    DateTime temp1;
    temp1 = DateTime.now();
    try {
      temp1 = DateTime.parse(forecast.timeRequiest);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return DailyForecast(
      timeRequiest: temp1,
      city: CityMapper.fromApi(forecast.city),
      countDays: forecast.countDays.toInt(),
      days: forecast.days.map((el) => DayMapper.fromApi(el)).toList(),
    );
  }
}
