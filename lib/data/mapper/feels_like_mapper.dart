import 'package:hello_weather/data/api/feels_like_api.dart';

class FeelsLikeMapper {
  static Map<String, double> fromApi(ApiFeelsLike list) => {
        "day": list.day.toDouble(),
        "night": list.night.toDouble(),
        "evening": list.evening.toDouble(),
        "morning": list.morning.toDouble(),
      };
}
