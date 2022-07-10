import 'package:hello_weather/data/api/model/day_api.dart';

class ApiDailyForecast {
  final List<ApiDay> days;

  ApiDailyForecast.fromApi(Map<String, dynamic> map)
  : days = getDays(map["daily"]);

  static List<ApiDay> getDays(List<dynamic> map) {
    List<ApiDay> result = [];
    for (var el in map) {
      result.add(ApiDay.fromApi(el));
    }
    return result;
  }
}
