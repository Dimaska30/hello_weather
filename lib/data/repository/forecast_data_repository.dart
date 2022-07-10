import 'package:hello_weather/data/api/util.dart';
import 'package:hello_weather/domain/model/daily_forecast.dart';
import 'package:hello_weather/domain/model/city.dart';
import 'package:hello_weather/domain/repository/daily_forecast_repository.dart';

class ForecastDataRepository extends DailyForecastRepository {
  final ApiUtil _apiUtil;

  ForecastDataRepository(this._apiUtil);
  @override
  Future<DailyForecast> getForecast({required City city}) {
    return _apiUtil.getForecast(latitude: city.lat, longitude: city.lon);
  }
}
