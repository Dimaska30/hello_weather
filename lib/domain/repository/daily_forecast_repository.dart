import 'package:meta/meta.dart';
import 'package:hello_weather/domain/model/daily_forecast.dart';
import 'package:hello_weather/domain/model/city.dart';

abstract class DailyForecastRepository {
  Future<DailyForecast> getForecast({
    @required City city,
  });
}
