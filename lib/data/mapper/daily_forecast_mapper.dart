import 'package:hello_weather/data/api/model/daily_forecast_api.dart';
import 'package:hello_weather/domain/model/daily_forecast.dart';
import 'package:hello_weather/data/mapper/day_mapper.dart';

class DailyForecastMapper {
  static DailyForecast fromApi(ApiDailyForecast forecast) {
    return DailyForecast(
      countDays: forecast.days.length,
      days: forecast.days.map((el) => DayMapper.fromApi(el)).toList(),
    );
  }
}
