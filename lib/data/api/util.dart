import 'package:hello_weather/data/api/request/get_cities_body.dart';
import 'package:hello_weather/data/api/request/get_forecast_body.dart';
import 'package:hello_weather/data/mapper/city_mapper.dart';
import 'package:hello_weather/data/mapper/daily_forecast_mapper.dart';
import 'package:hello_weather/data/api/service/open_weather_service.dart';
import 'package:hello_weather/domain/model/city.dart';
import 'package:hello_weather/domain/model/daily_forecast.dart';

class ApiUtil {
  final OpenWeatherService _openWeatherService;

  ApiUtil(this._openWeatherService);

  Future<DailyForecast> getForecast({
    required double latitude,
    required double longitude,
  }) async {
    final body = GetForecastBody(latitude: latitude, longitude: longitude);
    final result = await _openWeatherService.getForecast(body);
    return DailyForecastMapper.fromApi(result);
  }

  Future<List<City>> getCities({
    required String city,
  }) async {
    final body = GetCitiesBody(name: city,);
    final result = await _openWeatherService.getCity(body);
    List<City> answer = [];
    for(var el in result){
      answer.add(CityMapper.fromApi(el));
    }
    return answer;
  }
}