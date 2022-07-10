import 'package:hello_weather/domain/model/daily_forecast.dart';
import 'package:mobx/mobx.dart';
import 'package:hello_weather/domain/repository/daily_forecast_repository.dart';
import 'package:hello_weather/domain/model/city.dart';

part 'daily_forecast_page_state.g.dart';

class DailyForecastPageState = DailyForecastPageStateBase
    with _$DailyForecastPageState;

abstract class DailyForecastPageStateBase with Store {
  DailyForecastPageStateBase(this._forecastRepository);

  final DailyForecastRepository _forecastRepository;

  @observable
  City city = City(name: "Omsk", lat: 55.0, lon: 73.4);

  @observable
  DailyForecast? forecast;

  @observable
  bool isLoading = false;

  @action
  Future<void> getForecast({
    required String nameCity,
  }) async {
    isLoading = true;
    final data = await _forecastRepository.getForecast(city: city);
    forecast = data;
    isLoading = false;
  }
}
