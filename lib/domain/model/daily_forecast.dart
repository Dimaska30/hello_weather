import 'day.dart';
import 'package:hello_weather/domain/model/city.dart';

class DailyForecast {
  final DateTime timeRequiest;
  final City city;
  final int countDays;
  final List<Day> days;

  DailyForecast({
    required this.timeRequiest,
    required this.city,
    required this.countDays,
    required this.days,
  });
}
