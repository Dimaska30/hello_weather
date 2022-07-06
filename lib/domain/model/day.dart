import 'package:meta/meta.dart';
import 'weather.dart';


class Day {
  final DataTime time;
  final DataTime time_sunrise;
  final DataTime time_sunset;
  final Map<String,double> temp;
  final Map<String,double> feels_like;
  final int weather_id;
  final String weather_main;
  final String weather_description;
  final double pressure;
  final double humidity;
  final double speed;
  final double deg;
  final double gust;
  final double clouds;
  final double rain;
  final double snow;
  final double pop;
  final City city;


  Day({
    @required this.name,
    @required this.time_requiest,
    @required this.city,
  });
}