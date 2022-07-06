import 'package:meta/meta.dart';
import 'city.dart';

class HourlyForecast {
  final DataTime time_requiest;
  final City city;


  HourlyForecast({
    @required this.name,
    @required this.time_requiest,
    @required this.city,
  });
}
