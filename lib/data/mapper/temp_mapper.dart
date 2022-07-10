import 'package:hello_weather/data/api/model/temp_api.dart';

class TempMapper {
  static Map<String, double> fromApi(ApiTemp list) => <String, double>{
        "day": list.day,
        "min": list.min,
        "max": list.max,
        "night": list.night,
        "evening": list.evening,
        "morning": list.morning,
      };
}
