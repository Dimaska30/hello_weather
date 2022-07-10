import 'package:hello_weather/data/api/model/feels_like_api.dart';

class FeelsLikeMapper {
  static Map<String, double> fromApi(ApiFeelsLike list) => {
        "day": list.day,
        "night": list.night,
        "evening": list.evening,
        "morning": list.morning,
      };
}
