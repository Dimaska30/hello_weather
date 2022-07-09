import 'package:dio/dio.dart';
import 'package:hello_weather/data/api/model/city_api.dart';
import 'package:hello_weather/data/api/model/daily_forecast_api.dart';
import 'package:hello_weather/data/api/request/get_cities_body.dart';
import 'package:hello_weather/data/api/request/get_forecast_body.dart';

class OpenWeatherService{
  // ignore: constant_identifier_names
  static const _BASE_URL = "http://api.openweathermap.org";
  // ignore: constant_identifier_names
  static const _URL_FORECAST = '/data/2.5/forecast/daily';
  // ignore: constant_identifier_names
  static const _URL_CITY = "/geo/1.0/direct";
  // ignore: constant_identifier_names
  static const _API_KEY = "0321031a0a3976e5cce43a58b5b2ca4a";

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _BASE_URL),
  );

  Future<ApiDailyForecast> getForecast(GetForecastBody body) async {
    final query = {'lat': body.latitude, 'lng': body.longitude, 'cnt': 16, 'appid': _API_KEY};
    final response = await _dio.get(
      _URL_FORECAST,
      queryParameters: query,
    );
    return ApiDailyForecast.fromApi(response.extra);
  }

  Future<List<ApiCity>> getCity(GetCitiesBody cityBody) async {
    final query = {'q': cityBody.name, 'limit': 5, 'appid': _API_KEY};
    final response = await _dio.get(
      _URL_CITY,
      queryParameters: query,
    );
    List<ApiCity> result = <ApiCity>[];
    for(var el in response.data){
      result.add(ApiCity.fromApi(el));
    }
    return result;
  }
}
