import 'package:meta/meta.dart';

class City {
  final String name;
  final double lat;
  final double lon;
  final int id;

  City({
    @required this.name,
    @required this.lat,
    @required this.lon,
    @required this.id,
  });
}
