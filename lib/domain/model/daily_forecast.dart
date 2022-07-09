import 'package:fl_chart/fl_chart.dart';

import 'day.dart';
import 'package:hello_weather/domain/model/city.dart';

class DailyForecast {
  final int countDays;
  final List<Day> days;

  DailyForecast({
    required this.countDays,
    required this.days,
  }) {
    days.sort(((a, b) => a.time.compareTo(b.time)));
  }

  double getMaxTemp() {
    double result = double.negativeInfinity;
    for (var el in days) {
      if (el.temp["day"]! > result) {
        result = el.temp["day"]!;
      }if (el.feelsLike["day"]! > result) {
        result = el.feelsLike["day"]!;
      }
    }
    return result;
  }

  double getMinTemp() {
    double result = double.infinity;
    for (var el in days) {
      if (el.temp["day"]! < result) {
        result = el.temp["day"]!;
      }
      if (el.feelsLike["day"]! < result) {
        result = el.feelsLike["day"]!;
      }
    }
    return result;
  }

  List<FlSpot> getActualTemp() {
    List<FlSpot> result = [];
    for (double i = 0; i < countDays; i++) {
      result.add(FlSpot(i, days[i.toInt()].temp["day"]!));
    }
    return result;
  }

  List<FlSpot> getFeelsLikeTemp() {
    List<FlSpot> result = [];
    for (double i = 0; i < countDays; i++) {
      result.add(FlSpot(i, days[i.toInt()].feelsLike["day"]!));
    }
    return result;
  }
}
