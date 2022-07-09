import 'package:hello_weather/data/api/model/temp_api.dart';

class TempMapper {
  static Map<String, double> fromApi(ApiTemp list) => <String, double>{
        "day": list.day.toDouble(),
        "min": list.min.toDouble(),
        "max": list.max.toDouble(),
        "night": list.night.toDouble(),
        "evening": list.evening.toDouble(),
        "morning": list.morning.toDouble(),
      };
}
