import 'package:dio/dio.dart';
import 'package:hello_weather/data/api/model/city_api.dart';
import 'package:hello_weather/data/api/model/daily_forecast_api.dart';
import 'package:hello_weather/data/api/request/get_cities_body.dart';
import 'package:hello_weather/data/api/request/get_forecast_body.dart';

class OpenWeatherService {
  static const _baseUrl = "http://api.openweathermap.org";

  static const _forecastUrl = '/data/2.5/onecall';

  static const _cityUrl = "/geo/1.0/direct";

  static const _keyApi1 = "0321031a0a3976e5cce43a58b5b2ca4a";

  static const _keyApi2 = "ed888b1401a267d20dfc7364409478de";

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _baseUrl),
  );

  Future<ApiDailyForecast> getForecast(GetForecastBody body) async {
    final query = {
      'lat': body.latitude,
      'lon': body.longitude,
      'exclude': 'current,minutely,hourly,alerts',
      'appid': _keyApi2,
      "units": "metric"
    };
    final response = await _dio.get(
      _forecastUrl,
      queryParameters: query,
    );
    return ApiDailyForecast.fromApi(response.data);
  }

  Future<List<ApiCity>> getCity(GetCitiesBody cityBody) async {
    final query = {'q': cityBody.name, 'limit': 5, 'appid': _keyApi1};
    final response = await _dio.get(
      _cityUrl,
      queryParameters: query,
    );
    List<ApiCity> result = <ApiCity>[];
    for (var el in response.data) {
      result.add(ApiCity.fromApi(el));
    }
    return result;
  }
}
