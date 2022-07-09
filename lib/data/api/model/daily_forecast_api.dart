import 'package:hello_weather/data/api/model/day_api.dart';
import 'package:hello_weather/data/api/model/city_api.dart';

class ApiDailyForecast {
  final String timeRequiest;
  final ApiCity city;
  final num countDays;
  final List<ApiDay> days;

  ApiDailyForecast.fromApi(Map<String, dynamic> map)
      : timeRequiest = map['results']['time_requiest'],
        city = ApiCity.fromApi(map['results']['city']),
        countDays = map['results']['count_days'],
        days = getDays(map['results']['days']);

  static List<ApiDay> getDays(List<Map<String, dynamic>> map) {
    List<ApiDay> result = [];
    for (var el in map) {
      result.add(ApiDay.fromApi(el));
    }
    return result;
  }
}
