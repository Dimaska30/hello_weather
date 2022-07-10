import 'package:hello_weather/data/api/util.dart';
import 'package:hello_weather/data/api/service/open_weather_service.dart';

class ApiModule {
  // ignore: prefer_final_fields
  static ApiUtil _apiUtil = ApiUtil(OpenWeatherService());

  static ApiUtil apiUtil() {
    return _apiUtil;
  }
}