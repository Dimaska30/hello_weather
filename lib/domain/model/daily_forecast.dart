import 'package:meta/meta.dart';
import 'day.dart';

class DailyForecast {
  final DataTime time_requiest;
  final City city;
  final int count_days;
  final List<Day> days;

  DailyForecast({
    @required this.time_requiest,
    @required this.city,
    @required this.count_days,
    @required this.days,
  });
}
