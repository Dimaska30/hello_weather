import 'package:hello_weather/data/repository/city_data_repository.dart';
import 'package:hello_weather/data/repository/forecast_data_repository.dart';
import 'package:hello_weather/domain/repository/city_repository.dart';
import 'package:hello_weather/domain/repository/daily_forecast_repository.dart';

import 'api_module.dart';

class RepositoryModule {
  // ignore: prefer_final_fields
  static ForecastDataRepository _dayRepository = ForecastDataRepository(ApiModule.apiUtil());
  // ignore: prefer_final_fields
  static CityDataRepository _cityRepository = CityDataRepository(ApiModule.apiUtil());

  static DailyForecastRepository dailyForecastRepository() {
    return _dayRepository;
  }

  static CityRepository cityRepository() {
    return _cityRepository;
  }
}